from sqlalchemy import create_engine
import pandas as pd

def insert_to_db(csv_file_path):
    # SQLAlchemy를 사용하여 데이터베이스 엔진 생성
    engine = create_engine('mysql+pymysql://root:1436@192.168.0.187:3306/test')

    # CSV 파일을 Pandas DataFrame으로 읽기
    try:
        df = pd.read_csv(csv_file_path, header=0)  # 헤더가 없는 경우 header=None
        df.columns = ['ID','설립연도','국가','분야','투자단계','직원 수','인수여부','상장여부','고객수(백만명)',
                      '총 투자금(억원)','연매출(억원)','SNS 팔로워 수(백만명)','기업가치(백억원)','성공확률']  # 컬럼명 지정

        # 데이터베이스에 DataFrame 삽입
        df.to_sql('company', con=engine, if_exists='append', index=False)
        print('Data inserted successfully.')
        
    except Exception as e:
        print("An error occurred:", e)

if __name__ == '__main__':
    csv_file = r"C:\BGM\DB_File\DB-test\BGM.csv"  # 실제 CSV 파일 경로로 업데이트
    insert_to_db(csv_file)
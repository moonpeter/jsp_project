package javabean;

public class IntroTest {
    private String id;
    private String pass;
    private int jumin1;
    private int jumin2;
    private String email;
    private String sel;
    private String domain;
    private String gender;
    private String genderView;
    private String[] hobby;
    private String hobbys;
    private String post1;
    private String address;
    private String intro;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getJumin1() {
        return jumin1;
    }

    public void setJumin1(int jumin1) {
        this.jumin1 = jumin1;
    }

    public int getJumin2() {
        return jumin2;
    }

    public void setJumin2(int jumin2) {
        this.jumin2 = jumin2;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSel() {
        return sel;
    }

    public void setSel(String sel) {
        this.sel = sel;
    }

    public String getDomain() {
        return domain;
    }

    public void setDomain(String domain) {
        this.domain = domain;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getGenderView() {
        if (gender.equals("f"))
            this.genderView = "여자";
        else {
            this.genderView = "남자";
        }
        return genderView;
    }

    public void setGenderView(String genderView) {
        this.genderView = genderView;
    }

    public String[] getHobby() {
        return hobby;
    }

    public void setHobby(String[] hobby) {
        this.hobby = hobby;
    }

    public String getHobbys() {
        this.hobbys = hobby[0];
        for(int i=1; i<hobby.length; i++) {
            this.hobbys += " " + hobby[i];
        }
        return hobbys;
    }

    public void setHobbys(String hobbys) {
        this.hobbys = hobbys;
    }

    public String getPost1() {
        return post1;
    }

    public void setPost1(String post1) {
        this.post1 = post1;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }
}

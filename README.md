
# Logo Devops Final Task

Bu proje Logo şirketinin Patika.dev aracılığı ile Fırat Üniversitesi Öğrencileri için açılan Bootcamp Bitirme Ödevidir.

Bu ödev daha öncesinde bize iletildiği üzere bir react projesini, bu projeyi dockerize edecek 
 [Dockerfile dosyasını](https://github.com/AhmetTpc/LogoDevopsTask/blob/main/Dockerfile) , Kubernetes üzerinde ölçeklendirip kullanıma açacak  [deployment](https://github.com/AhmetTpc/LogoDevopsTask/blob/main/deployment.yaml)
  ve  [service](https://github.com/AhmetTpc/LogoDevopsTask/blob/main/service.yaml) yaml dosyalarını, Gitlab üzerinde pipeline oluşturacak [gitlab-ci.yaml ](https://github.com/AhmetTpc/LogoDevopsTask/blob/main/.gitlab-ci.yml) dosyasını ve AWS üzerinde gerekli işlemleri yapacak 
  [CloudFormation JSON ](https://github.com/AhmetTpc/LogoDevopsTask/blob/main/CloudFormation.json)dosyasını içermektedir. **Bu işlemlerin Terrafrom yerine CloudFormation ile yapılma sebebi ise hocamızın işlenen ders müfredatında Terraform olmaması sebebi ile onun yerine müfredatta bulunan CloudFormation ile yapmasıdır.**

Projede dockerize edilen React image aynı zamanda bana ait olan dockerhuba da push edilmiştir. [Buraya tıklayarak görüntüleyebilirsiniz.](https://hub.docker.com/r/vexrem/logo-final-task)

Kubernetes deploy kısmında projemizi 4 replicadan oluşturuyoruz ve bu projemize final-task-app şeklinde isimlendiriyoruz. Containerlarımıza default port olan 3000 portunu veriyoruz. Buna bağlı olarak service kısmımızda selector bölümünde final-task-app olarak projenin deployment ile oluşan podlarını seçerek bunların hedef portunun 3000 portu olduğunu bu portu80 portuna ve Kullanmış olduğum NodePortun 30000 portuna bağladık. Böylelikle service oluştuktan sonra service atanan urlin sonuna 30000 portunu ekleyerek projemizi görüntüleyebiliriz. **NodePort kullanma sebebim özetle ClusterIp'nin küme içi iletişim özelliğine ek dış dünaydan da erişilebilirlik özelliğini katmış olması, bu projemiz de bir web projesi olduğunda dış dünyaya açık olması beklenir**. Diğer Sebepler service.yaml dosyasında detaylı şekilde açıklanmıştır. 

## Docker Komutları
Oluşturulan React image'ı aşağıdaki komutlarla bana ait olan dockerhub adresinden çekip çalıştırabilirsiniz.

```bash 
  docker pull vexrem/logo-final-task:latest
  docker run -p 3000:3000 vexrem/logo-final-task:latest
```

## Kubernetes Komutları
Oluşturulan React image'ına ait Kubernetes manifest dosyalarını bu komutlarla çalıştırıp çıkktıları kontrol edebilirsiniz.

```bash 
  kubectl create -f deployment.yaml
  ```
   Yukarıdaki komut başarılı ile çalıştıktan sonra sıradaki komut ile podları görüntüleyip statusları kontrol edebiliriz.
  ```bash
  kubectl get pods
  ```
  Bu komutla birlikte deployment tarafının sorunsuz şekilde çalıştığını gördükten sonra service dosyamızı da çalıştıp kubernetes tarafını tamamlamış olacağız.
  ```bash
  kubectl create -f service.yaml
  ```
  Service ip'sini ve diğer detayları görmek için şu komutu kullanırız 

  ```bash
  kubectl get services
  ```
  localhost:30000 adresinden çalışmakta olan projemizi görüntüleyebiliriz.

## Proje Çıktıları
[Gitlab Project](https://gitlab.com/AhmetTopcu/LogoDevopsTaskv2)

[CloudFormation JSON](https://github.com/AhmetTpc/LogoDevopsTask/blob/main/CloudFormation.json) ( **Terraform** yerine derste bunu gördüğümüz için bununla oluşturdum.)

 Kubernets Manifest dosyalarından[ deployment](https://github.com/AhmetTpc/LogoDevopsTask/blob/main/deployment.yaml)
  ve  [service](https://github.com/AhmetTpc/LogoDevopsTask/blob/main/service.yaml) dosyaları
## Kullanılan Teknolojiler

**React, Docker, Kubernetes, Gitlab, AWS** 

![Logo]( https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB)

![Logo](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)

![Logo](https://img.shields.io/badge/kubernetes-326ce5.svg?&style=for-the-badge&logo=kubernetes&logoColor=white)


![Logo]( https://img.shields.io/badge/GitLab-330F63?style=for-the-badge&logo=gitlab&logoColor=white)

![Logo](https://img.shields.io/badge/Amazon_AWS-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white)

## Geri Bildirim

Herhangi bir geri bildiriminiz varsa, lütfen ahmttpc14@gmail.com adresinden bana ulaşın.

  

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0677612DB25
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 20:19:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:From:To:MIME-Version:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8NabALtReiVa3vuNELi1SYZ5AfY8HNQqDFuKPffhVvE=; b=OBE
	8AQhEsD1bbRAJBj3TIS7tFbs4Q7pvSLSrm9wydU430NMPU+rGtNacQ2bnmiWEDKe4YiL8qANB+5vi
	R4XHOp+S0AtvZTosJyaDqqRVxouQ9VMSziWaU62SQHGm9odw0zzJwhWAI+n4c0NZB0eODvHKjT1Nq
	nzfZ439uZc5mfJdaSVT5EUWqE8UZsqbWakkJEdVVb00meMRfMMa2k81k4awVj9tj/upwyX1hSz2Lx
	o83SYzZ4iIoKXizh63tJteRP9Wfbvb0Cs5s6YNc+FUwpNmaWM0wycFCZJ/ad125UUbeB42EGJUihr
	x/NCtuewtXHt6MUI9D95YvzRr6hWi/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imN2m-0001zO-Dy; Tue, 31 Dec 2019 19:19:04 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imN2g-0001yp-Ji
 for openwrt-devel@lists.openwrt.org; Tue, 31 Dec 2019 19:19:00 +0000
Received: from Honor-Play-1db35e6380f5c0.fritz.box ([5.10.1.184]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MN5Nt-1j4rGL2JOv-00J69t for <openwrt-devel@lists.openwrt.org>; Tue, 31
 Dec 2019 20:18:52 +0100
Date: Tue, 31 Dec 2019 20:18:50 +0100
User-Agent: K-9 Mail for Android
MIME-Version: 1.0
To: openwrt-devel@lists.openwrt.org
From: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-ID: <A1FAAEE6-7F9D-4556-8BEA-3C30FD156938@adrianschmutzler.de>
X-Provags-ID: V03:K1:k22DMwAbzDhpc7SqvfCHdVK7opOXDLoAWwUKjFyG+VpVU+dOKYV
 /kdnp+3HcT/FkpQ7+/mZ9ZbW/MvQY+w3qnmUK9keKr6nebNSCcMtLLubhaSkoZllBLl4t3u
 km+YzNRtSsz5Kc6Z5x5UoK/LajpBOtKj7GvaOBq/z5JqK1IjVqpCOlp3ebENxoTAFxxCL5i
 dkly9JLbRKy4dn7KQf5Zg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:a+HgP26dP2g=:vdDnWExLBbfvNvmctfJnDU
 sZ4yMPgNL5gK2rKVUsib/3J/NTNfNRkJd8GkgKqUV0pHg1rH1Qgcxw4xnOTxahWf5FX4paQIW
 i17zZJQn837joszmx0/d2E3EI5TOdmub3llIcvgzDHLmF/Ofo7tQ9NHPZWNiVTzJZJfp0U1Or
 JHa57SpZcalhwJLRpsddU1SgfQ5M5QVGllGhAGA9tCvADMD5xrCT5MFWKGjNV6Q2fWJ2jhngA
 tFICoVyZ9asz7YerJbc9EuTjQA6QV+hIJSsR4VbjI0lT47fO3Qh1U2OhRHI9auEfy6w/wtXL0
 n/PYdzcMxHgeyOYVKKlfVBrrLPr9z87WXFezUjkskEMYqwOSF0vK4Dal6BkdOIwsoi5j97wIP
 mYr5HBYb9lo9xLr6JYcNdVjCuTsc6RzYryZp2U/ZtyTQcZtMmSJJPhgAwLPZxLRCmSmfq/9gu
 DwsjgIMfKxExWQ8dYDRbZICZ9PABQ2qrmhygBQLDIW3t9dH4/FCAq/4I1nQqooeWzTIXVrLsd
 DPyOv/pv+sg2oR3ggC4aQq5Map7UI9U0tdWby892dBXNY4J5KVlElqJO8v12EUZYzKzNNSk6H
 m7+81hCnlaLjMFrzsG0pfFF8V78dHqLbwYDaQtlwx3B4hvG16r0QnEWI59t59p1kXpbuePb4W
 Xk5Mkuy2NQipCZ9Y1KVQVUhEbTBTDP+LgzSSA0yjg8easXqkY6qvjHjVn/JigQU4f50ItkZ55
 7PJmqVs18K12zbZ0H8rbvSI57nPX/2P2K/EoQteoWo8ex+YisQm5r2rs5EU9fY/rSCA3xTWGc
 tqsh+u08Gfek7TWqhJbib7qL6eRxAI16t2FEBlSY0mVKkS4oiAiErlhfInmq8rt/tVvgWU5W4
 trCzCOfRaYkbuh42haiY+IcFi200GNXTYYfZZScfA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_111858_943864_B3FD7E03 
X-CRM114-Status: UNSURE (   1.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: [OpenWrt-Devel] Dependency build error fix
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8792288559676730015=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8792288559676730015==
Content-Type: multipart/alternative; boundary="----G5C41BOH8JQR3NY9QM5ZNGDEMWJZ9L"
Content-Transfer-Encoding: 7bit

------G5C41BOH8JQR3NY9QM5ZNGDEMWJZ9L
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Since I've read similar reports five times already:

Problem:

Package luci-mCollected errors:
* satisfy_dependencies_for: Cannot satisfy the following dependencies for =
base-files:
* 	libubox20170601
* opkg_install_cmd: Cannot install package base-files=2E
* satisfy_dependencies_for: Cannot satisfy the following dependencies for =
odhcp6c:
* 	libubox20170601
* opkg_install_cmd: Cannot install package odhcp6c=2E
* satisfy_dependencies_for: Cannot satisfy the following dependencies for =
urngd:
* 	libubox20170601
* opkg_install_cmd: Cannot install package urngd=2E

Solution:

make clean

This should cover similar errors with other packages=2E=20

Best

Adrian

------G5C41BOH8JQR3NY9QM5ZNGDEMWJZ9L
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Since I've read similar reports five times already:<br><br>Problem:<br><br>=
Package luci-mCollected errors:<br>* satisfy_dependencies_for: Cannot satis=
fy the following dependencies for base-files:<br>* 	libubox20170601<br>* op=
kg_install_cmd: Cannot install package base-files=2E<br>* satisfy_dependenc=
ies_for: Cannot satisfy the following dependencies for odhcp6c:<br>* 	libub=
ox20170601<br>* opkg_install_cmd: Cannot install package odhcp6c=2E<br>* sa=
tisfy_dependencies_for: Cannot satisfy the following dependencies for urngd=
:<br>* 	libubox20170601<br>* opkg_install_cmd: Cannot install package urngd=
=2E<br><br>Solution:<br><br>make clean<br><br>This should cover similar err=
ors with other packages=2E <br><br>Best<br><br>Adrian<br>
------G5C41BOH8JQR3NY9QM5ZNGDEMWJZ9L--


--===============8792288559676730015==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8792288559676730015==--


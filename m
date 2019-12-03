Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DE811063D
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Dec 2019 22:02:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xUf/VjsNwOhR1o7G93/452FiMMcu5afUJG/TOx8m7Uo=; b=nl7Sv6us+2bOW/
	XRKMy/oxeATy4Fnm0jPl7ZgSUqyg8d0n3ckAzdWxMzmsWXgNCm4huUhd8PcaZql3SrPfcnzGhQZUz
	7k2kThVl8E9ggA5tLfCP4+4QH7VHAwtU9+SIOznoaeOpMMtpIzgMxpKik8RwTM5GmpIijyVs8L2lO
	nIDCZ1CNNRB48rI0qLf+g7lggtpb5I3AY1tEdUyu7MW0JNp6uic92JiAMD4pEryvaLcuJMKvE499h
	3bLcPNSYdFywbJPccEw4sZ5IoVCTHCerRea+OIgFUJbvZC5/FUjg2XXuuQ1XTb8hV3EA9Ns4aan4T
	Onb2c7vJoy/73IlKp/sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icFJZ-0002LA-86; Tue, 03 Dec 2019 21:02:33 +0000
Received: from mout.web.de ([212.227.17.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icFJH-0002K5-QZ
 for openwrt-devel@lists.openwrt.org; Tue, 03 Dec 2019 21:02:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1575406928;
 bh=CBzu8MwvYieZUPVZWwDiAZBJIV+zz5BypA1p1DyUgOI=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=a/bRQA7sWPSceJT9iUxVog/OJPkq9Lr2O+tFG1ckSL//8ozCx5zyrNiOumvCyZzAP
 ao+dVkX8UuIeiFAs+iuvv2kTFIbDfnqFvndwa/777vlGUzm/3UTWFxyiAuw4AZT3CJ
 5c2iJvgCgHz4ryYUQgJovKdA//9nFNZ3A1gkBd/0=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from xanax.club.berlin.ccc.de ([195.160.172.42]) by smtp.web.de
 (mrweb102 [213.165.67.124]) with ESMTPSA (Nemesis) id
 0McFPX-1iJCSN2tQl-00JY6c; Tue, 03 Dec 2019 22:02:08 +0100
From: Moritz Warning <moritzwarning@web.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  3 Dec 2019 22:02:32 +0100
Message-Id: <20191203210232.29432-1-moritzwarning@web.de>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:qUYVZOQPT53kgonq+MnGKawhkESIJIHcX53YlyaMTqtre0x3/99
 BQdjCgqTJU5+e2kQaAmMRqn95U+n3Uck4VX8JmMYhh2vtTRPLfD47McMYj7+e3+Z3nlNqiK
 FCXuGFItX46UB+Vvm/Ks0IaiJCjkznnZS27JLgzmGWLJGXGPekktoG6sXseDY54iY5rd9zD
 MCeRR9nZ/aNXOk+Gq2nWw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8DFF1gXuPCU=:3PMbSiuSnjj+t+Q4+quu8O
 G/IHzSFoG0BLeWSVz6d7PC3ZFb1qn7DK+KEfyOQ/WQrpZsAYz0JOsSC0N6dhkTdaH3+q1nOO+
 nFHm2to7Y0x3i4urkMuDRrdk/I4fmF3zPMoeO+GH135CujAnFaKijh8S35oXteOuxJoDGX1+J
 nDa398R9ngvhnDeqlr0/S3mTP4R6B38KtsDUlujIKpod4jWgrfWF2V8vJ5AOljQILunSFBmei
 K2QedjUg9huczHak3TBNCoGiRlQJtse4CjmqmPWwhA3gX+eUpOzsbvMpbX6Cc8cBQ5E1VTh6m
 Ss4lNwcVbY/GDO9Aj5Zjw5ODGdlgTtlA8axDaglT8NeUu6xK0zf6imFCyhZQL56NOQHEGrGE4
 JNBpehRK6xTyP9cYhsyI4VDIadNXikVpIk9pqJUB8NF9M93nUjG3hoAlwu4ZQRvwMDECCvKjP
 brmFZ3ylcixTGlQzuAnCjlaSXgdJDf4FKO/tfrr21aVDlwaHT2lW60yy1WtjpFi3oREy1f7LR
 C5YwEN2UV12onpA+uVm/VvMokXWWQ6nQCJpl/piJa7/dngrx/UuzAvg4vlg3D1ICUpLYaL4pZ
 3I3BVGdXpGbzU0sANnJ3xG6dUU7mxbg9WLbURmvSP0PulIY95Oe2PbonyPATpEbrd+SUfFU73
 gCfPu62wbO+CStXq8n+4MpAbMEXkbunSFCZrcTewfeFjS8IV99mMSPZm7GuS9M6VIpuMYuFtd
 39FDuR+z8vZmu5GzGTsahAraH4xgOEaGtEMmckbGwpibFMR407BhtX0EDfypmJ1rux4pWQe9y
 LNgt9p91APzaPdDZp7oFK8JDjo2jXLEI2l2ySMWoLhjYOr6nh21PsOQfzWU//vifW/dKv8exp
 RxkaR4lhpoT2BhnczqYWZuCiHsOB8IKJ5/43++SpuKmTkN5pmilmAVXCo3nIPNARDSGCkpDy5
 fuv1zc0SGyC8ktmKqJsw69fB9oqFb2fjL5xTiwrwmPAB4r9YzYWn7/oTA23J9z8zA6XrI86Gj
 08zTtqUn4hu5dZezjODSW9mwLZ/YD3OUbsXmsyTf9urCwMYYNlVM/Sf+g2zyC2MfTWZujGi6W
 pFrTPHUZt/3m9umpuudx386JoX4PMuGHDcWiNmun+mZWdZNz/97W14Y84i4X6wVJPGY1uetn/
 o80MXJ/TAU0RZJBq3XcmvhsZnFo1DB8WVOnJMSowGLBwTTLJAad6XbRo+7O+DbvEPn2/C4wni
 MLfqO41xqsBWoCe8lsm6cVSWmVpa6JWNHEtXaEv1wKx7kl7HrjLVhCkzrMv0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_130216_200055_877F8947 
X-CRM114-Status: UNSURE (   6.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (moritzwarning[at]web.de)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.12 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH] ramips: fix inverted reset led for ravpower
 wd03
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
Cc: Moritz Warning <moritzwarning@web.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Moritz Warning <moritzwarning@web.de>
---
 target/linux/ramips/dts/mt7620n_ravpower_wd03.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ramips/dts/mt7620n_ravpower_wd03.dts b/target/linux/ramips/dts/mt7620n_ravpower_wd03.dts
index 7dcff46917..bcc1e2c27b 100644
--- a/target/linux/ramips/dts/mt7620n_ravpower_wd03.dts
+++ b/target/linux/ramips/dts/mt7620n_ravpower_wd03.dts
@@ -32,7 +32,7 @@

 		reset {
 			label = "reset";
-			gpios = <&gpio2 1 GPIO_ACTIVE_HIGH>;
+			gpios = <&gpio2 1 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_RESTART>;
 		};
 	};
--
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

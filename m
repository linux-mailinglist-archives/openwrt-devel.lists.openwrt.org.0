Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EF6AC727
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Sep 2019 17:06:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lPyej1YykDgc9rWAs9TZk3A5+Mw97fmLgdDOkl6ORSg=; b=haSOFGKVXQ763p
	QxFBvezdLwpx9GYYqT/6t0i6CbU8+eVG68NLbWZZYN+ucrcH3ns2EmXqrJUB1HYYz57LZ5kGbjL8l
	J6zZn/NgwZCyRLkcudHW53uNZCPwRZvkSDCvvIj21JOxa4kbzpZxm80XraVHM6C5aL8GiSJf7IWG1
	an3zt26KhRhHdcyvLecEel2YA/RC8tBf111oYTOD9ibMVxTgp7LKdu9FbTTLvatifLi5gDujkP2AA
	FNiQk5p12TnEVRkMKUcZiVQsZQwdbLBoRQnwYFSZBkSsroNkVN8IEMrq+7Hq041r9fgxnPd2+SLYN
	FwNawgHINFzADqnd0vNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6cHr-00050h-Ka; Sat, 07 Sep 2019 15:06:03 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6cHX-0004zo-MI
 for openwrt-devel@lists.openwrt.org; Sat, 07 Sep 2019 15:05:45 +0000
Received: from buildfff.adridolf.com ([188.193.187.204]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N6sSV-1iDL0n2BOJ-018IwX for <openwrt-devel@lists.openwrt.org>; Sat, 07
 Sep 2019 17:05:38 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  7 Sep 2019 17:05:33 +0200
Message-Id: <20190907150535.3373-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:THoF6Tetnip3Uhhj1n1nUzLg7fUl/2hEf82HLhtcfYq5yFZ2v2k
 UWOns5KWerI1BaRkdpwvOSpyPTuHmDV9nSP2vWyZ1D7jKAPn0Pia+LVxwlQi2bU6RY/BF6N
 qEfGNpA+2F6R2wmYUGEWXDc5DbQsmCCy5+8QJboSw+hTqH0TMXWkz6C8dZUPulnzM+By/6C
 uOM7SgeJ8wS4MYKixlm5g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/9JFamAMVMo=:Abdi/S3GVCp+mGKKuoAzxl
 cJIw77Sk8hKT4uCpy+nBS94xUwmUzVmOAecRgFeXq+ZozeWhyRd08+3yZP47zTdKuuaIe+j+Q
 FMGxhlPsxqAlGCw8yanOPWlDCJjg8VElPHnXRXiMGp6Jn1k8hsdniQK082sW/xYZXt5GGSaA5
 BDhE1i+k10oYjw3fvuDKB526dlXHy7h5XLmhGPTOfaoF1neD1cMmPpL2lhA8nJvL7FgFJ/pkU
 l/qk7gePSiNkGzhBY0ZjYrnw7TAdhM7CaUnNQKpD6wxjSpFVViNiuKbW/xmFjX6pakHbtVdN0
 VrcOnFzukj7BJmmtZVsBjXyeeeskI6iQanhTy7vmrd5lOoQEItzw17elGCnNrCpg2CIPNuWWD
 I5eFSFtQT74+neS3kDar7+O5M8M1e5cj0FDEcozSMz+j09iKVPrmjzV1BxHdDC2IoDEjHQ0b8
 XKQWZZMgPHMxqaWMGpOBTR+sdFzo9NILrhpR1mnM9vePQV33cUApQ44IvD98MGhEgug6WiflY
 p07AEcVmwgt5T3Gf7YU8OYpI5kdHx9NBOBihVREXPJyzSJUbSEmgSYvq0PKODFhMa9fAzW8OR
 rZyfCF5kCp1Ds8V5bw9T/p5r23zbejpqP/9fLufFqb1PPKCem2ryHYq9SKvO0nkQmLjDzxoAj
 uu2BxLK/HRNh6GXGBI8R+dAngRv//pUlO1xr1EMikiyXb/brUDsb+yODGTEkxuJoorFqsLsj9
 jp1O8iAAKwRRYSMRcr0fORxYQDS6pp2TiEyQcx0AUd3UhlJdcsWCHhIgdStukhvHSfUr4S2Bv
 pIbAtQF+z+qJsjQu8xtzvXNVypVdc5bw2Np5tOk5NFoPcsms+7RzMZEfWVvSELUcVJ2r6Ux
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_080544_025367_C1EB6D69 
X-CRM114-Status: UNSURE (   7.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
Subject: [OpenWrt-Devel] [PATCH 19.07 1/3] ramips: remove duplicate case for
 MAC setup of freestation5
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

ARC FreeStation5 is present twice in MAC address setup.

From older commits/changes, it is not possible to reconstruct
the correct choice only by reading the annotations.

Thus, remove the second case and keep the first one, so behavior
stays the same (as nobody seems to have complained about it).

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
(cherry picked from commit ad4eb2241b33b05b0942a3fa7ed2e53fb6e84386)
---
 target/linux/ramips/base-files/etc/board.d/02_network | 1 -
 1 file changed, 1 deletion(-)

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index a5cfd8343a..f3965a9507 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -514,7 +514,6 @@ ramips_setup_macs()
 	dir-320-b1|\
 	dir-620-a1|\
 	esr-9753|\
-	freestation5|\
 	hilink,hlk-7628n|\
 	hlk-rm04|\
 	mpr-a1|\
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

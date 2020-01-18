Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 232D1141564
	for <lists+openwrt-devel@lfdr.de>; Sat, 18 Jan 2020 02:19:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nIM2VWwhgdA/bH2EKC+X0GbH+eOHkbaLAAJgHhak8Hs=; b=fD96PRCc83EJx5
	i8YgMsUOFJx8RB64/M9Dz4NGzjZu2ylNAR2qF1piyV40KzDKAi/TZ0jdEenmYCJK5Mbve+XWmiPOf
	GYuNipK7XQFZp2krxcTseDXGw0YV/iujcnrW3hiBEJGAPvJDLPSSqe9DMsY1Rl05yYGmv0fi3N0Kk
	xOEwU//kBxQDg7N0bN6g3E5OpE9JclNRhh+gyFYwQXA9/DE1qQU16QiwlUwgpOG60g+pKFJRd/nwU
	iMBpvyW5mJNAAq9tW1o82lSoQW5XPPUHGhfTkkNBfiQrhqq5AOX6pISzcCx+tuMKqx/3w+AXNm9Pq
	VfNNcbbcLl67n7//4HPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iscko-0004kL-8Z; Sat, 18 Jan 2020 01:18:22 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isckh-0004jM-Rp
 for openwrt-devel@lists.openwrt.org; Sat, 18 Jan 2020 01:18:17 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1My3Mv-1jqt0U18Jj-00zWz0 for <openwrt-devel@lists.openwrt.org>; Sat, 18
 Jan 2020 02:18:13 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 18 Jan 2020 02:17:28 +0100
Message-Id: <20200118011728.45701-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:PsnAY+09hxA19VhgjYEiE4ueumOF/S5SMiQh4yucUYoJBcKZFS9
 KgFB2/WMvtk62muG3MUVp7OXHmf49BTy7ZBcoaC0nhprqYPD7LTqVYWkelhkitc+mymd87V
 3O1UzlKmIDItuy3Lx7SzVh2+xEUCUe73/+LGcS/hlnvJeK2XYVU/l+qxyAuXITO/HXKiksm
 ewbbTxvwnv8DpQi/omm6g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wSxy3L2gM1Y=:Hwt4YloWJnegPBW4q3eNx3
 P+arLCl0WMp/BZocEC4I4Ibeh435m6OQ8rjNGEjSh1jfVw7ErHCcTGKE6DtbxydoBEvi/CilS
 1c/0my1Q67MpHeGQ1lIUoq3fhduRyScp9tDH6b2j2HbocUdLNW0QrLNBcbj0K1Nw5G3mYMUH6
 ztYgD6yWOP0EyIEEWVUiYWoAAFOWb1GtrC5tkjvCFCOTdXfFEcRh87K1/pXQCMIGfsxW3gjJK
 N2Febui1LjuPmjm+7HhMHRWtfPVNMedEmhu5SNIvkeVKGflPJRp8fZCYYjUJduUXaPYH88ApA
 Qf0+O1RHolONfqucgk4ULKsEwaXaNpHYrxcQyZrpHYfF6sUgV0gz9z5gqP2EXKCOJ0KAxod4z
 X4nvgGhGM04xNSSNL6/RN6gSAb9XnoS51NmBFOWRPrK45lPskj7aGOg5q3mVfCVIHphHYTm42
 ApVCcYjigSc3NtI/fqX9yPRth/wP7RF6XIDlTN/J+/AA/nj+PDGgU6joeUn5sASVihq8/YAdD
 Yc7O4OcAEEn6JKL5FIvp/6Rn0aqiwJ1JcIuQB3eKuP/lIagd70ZHeG64J5BvykOtMziIu8MIB
 wX1eiJb5yFlZup5PSqex3YyWtF+nozm9ngnLjMxfIKPoiLknaCZtCI9gqcrZeXlcAaVOFKRMr
 6ASMARLSKerYvfQfiQy5fYeFKo3v+GtvCL5t5ha2eg6E+Es72qqdNChpl/VF5+Gs4EvTB3UOF
 dlpQBN5Nx8ztYOgBDRSpMJDFVVWw5Sz7dAR6NTepzvKmVc9ur4YEBMC0EDcd1qr84W+tgU7Qk
 I1Cqln/sWxtJeZUxmDSTFWHgCmCPCdzfV32fSHRrZ2sNTD7dRjjqZKr4FmQ4hKuYhHv0Q6zT/
 p63nq0ubhmw8Jb3iZI5fKMSmgntoauK2s/s9zvoP0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_171816_197313_B9C8C8C0 
X-CRM114-Status: UNSURE (   6.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] octeon: remove redundant network setup
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

No need to have specific setup when default case does the same.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/octeon/base-files/etc/board.d/01_network | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/target/linux/octeon/base-files/etc/board.d/01_network b/target/linux/octeon/base-files/etc/board.d/01_network
index 79e508955e..f5c8175c54 100755
--- a/target/linux/octeon/base-files/etc/board.d/01_network
+++ b/target/linux/octeon/base-files/etc/board.d/01_network
@@ -8,10 +8,6 @@
 board_config_update
 
 case "$(board_name)" in
-erlite)
-	ucidef_set_interfaces_lan_wan "eth0" "eth1"
-	;;
-
 *)
 	ucidef_set_interfaces_lan_wan "eth0" "eth1"
 	;;
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

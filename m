Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2098B111BB7
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Dec 2019 23:36:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8MxPaqeCj3dX1g63iPrupJXOFKCuoGsp1iOURMOa304=; b=tgMgp/B+o/PvCI
	a4s932V62LE2nDKa9eiJfQyQXJb1BbvRgu6LlATmuazSHYsOqxZpx8gCnOOCsGdi2l3WyAMfo4JUh
	rjOEbL6rf3jfPis84qAYLFFdYSYAf+rITYt2jPBSVJpeEL90qvt/rAOmug9j6KhQF4xgGIbh7d2kH
	OoWDjg6PKV1KyekMi5EyAWsfjaPsv3Rcq28p/wWf1KoFP2JSqUB6IEcy728ctN3p940yQg0AiEx+L
	5SqKJMjlZh0oTLgKuTG90femSTymZMYbx615YY6D0t3Nl2/g0+Xp+5CoeyiYYitVx0TEKud9XcAVv
	qOltn/vkUtz8sbX9sJlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icGm0-0004ac-HI; Tue, 03 Dec 2019 22:36:00 +0000
Received: from mout.web.de ([212.227.17.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icGlu-0004a7-CA
 for openwrt-devel@lists.openwrt.org; Tue, 03 Dec 2019 22:35:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1575412553;
 bh=6e/Guk8ODy6nRm8UPr7kPF+O7sKnPDW9sTf+SdPdc0c=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=BCBzzwCEAvwXm3ZzSlXg/Mw6uHrfpjMqtKAy7NmLTOVhxpkvJPmD3TiVqEuyufbD5
 gVfbEXk+4GO+wB3irdbqbG8QJuVVTkMMn89L/lw1jB/+tEjOWf/y2813ZNAW2UsAnK
 cysSIcLuXP0bI2y28PSk92XMP27CM7gHI6cydV/Q=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from xanax.club.berlin.ccc.de ([195.160.172.42]) by smtp.web.de
 (mrweb103 [213.165.67.124]) with ESMTPSA (Nemesis) id
 0MXYWA-1iEXMs3ExC-00WXIe; Tue, 03 Dec 2019 23:35:52 +0100
From: Moritz Warning <moritzwarning@web.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  3 Dec 2019 23:36:13 +0100
Message-Id: <20191203223613.12661-1-moritzwarning@web.de>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:e0I10yAQ9Njz8+lxgg08RNNkp78IAN/ZwomCwM8S4k4khuSKJ08
 Bmxq2CtZ1v9Q3e85j8PO8s1+ZsIpNek3jVnr4BqsCasDP/b3fULmguUlVXBFAaWwRuqjJ0G
 3TxXKHuRwatL8vFDd26DRBgpo/YwKQBuGm+bGONpci2jWKwtB1V4LYp37nBdT5WhmSwF7oV
 4khQejDeprd3wE1bO0rCg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:if1ONFvQ0m4=:/YEAKNVncO6G4QUqfN5O+Q
 SGqVT1JFn1Dl1HIqdhhMvNglueoLxWfh+5rx60vELvb8LGLZXrl6RxRL+37K/z0QiAamD5tpo
 PvDkrX6/d8ZXerQDsDcUpu2F7txmCgQtgoLXQeIjmfwQ88HKMREuCp3S6ftfOpu9I5yMHuXaR
 uVcSx+fgRindC1IiHKg3nyzSW/9oRwiShWga75qXpE4cByXmN/6ioL1f2mrlLEE3fOUUPA1YP
 ZL8Zx3p6g0APp03UT69MtVzVdXtHzmqURSKKnusK86ti8eF6qIA2cLvAOX+aaifBHI4uNHiZp
 ZejGPjQFbdrAHGVPM0+DHv/FZz5OO93DfInkTYCssWVZHTwdNx23+BWzouFtHrp7vjFgQ2L6g
 2XK6rhd0rMwvh5CKEQCiNNZDBgIN4XMNaTF1TKpiowFrqVyNQb91nl6htgDPUNUERuiZQVOro
 pxp4FuFbB6nl1CCnMrMuG9HzcyKzbiBHV//SN8nWRw/jvCULZiMr9kekpWDPJEUkbJ1USq4pQ
 6Elvi+8BFygSf0QV4V9l26hgA2WExCmQmFRQsFLQ50/ioHlZNfS81aeZ81DunzKvMFSjS5xGx
 nESJddnNi3SRiacnjvIUrIxFxhnpqNVxLj+EaMsrCcKqJ1+NYi0ZkSpNcWyjDvnhuHjnCW+y4
 jVAlz7BPiw4uwfrXpP27rVU9OpIixbIRiaD38Fn2Xlp3+WqI5xMcKKhEo+BOdvCh6kEXXYk2B
 UANz/WzEhMTbBC3HHg5rILP9PbwasiIPSJx/+xTNba/IT5g1rNYIAVWvgIGOB9mXGpLKorr4l
 fGP2787WlGzdpnrpOYUPOz8lGFx8HIsucU+1a06IBJZfH0kRCuZP3v1UmF6yfNTUAERWkdw6K
 GP3F1rv25F1C5l3FXy2/s8/oPQv4i6E1qRT3NKvQw2Ohge08GhdeLaZ6edbfaUA5zHK0xdYJ8
 AdkcgeAkXVDGUBUYpH/+U7E/9ecCKiHNFPslGt98OMOo07ZlnY3JuduKEZNgizR3K6jyS/Exn
 tXIQA76M4M7dKBNzXkJdUMOESet5U5epUW7g5Fqac7nrJl7XWoVQt90bM1mPJ6gkFDbSnkedb
 CRJyynAquVVvleDhXQ6pFQKfbIN7ryL9ZlYghQ8OpTCKMmkkk2fQ4nUvXqazwlRj0FZIiCCLY
 EyBwyzH5wYhae7X2AuzdkTY6Md3ORVLKJT1SKH1Q1M9jkEovnbeIljRgStKgEkjgy/U3XSABT
 oFELurLB+k94jreOQjNIJXoJnzke31ecEE9JkDXd1BrDQR9QhmGK/nosY0hU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_143554_714552_55521430 
X-CRM114-Status: UNSURE (   6.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.12 listed in list.dnswl.org]
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
Subject: [OpenWrt-Devel] [PATCH v3] ramips: fix inverted reset button for
 Ravpower WD03
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

The button events "pressed" and "released" were switched. Tested with v18.06.4.

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

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85442111BAF
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Dec 2019 23:33:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xUf/VjsNwOhR1o7G93/452FiMMcu5afUJG/TOx8m7Uo=; b=MiEnhEjAm0GK/m
	N1gvUTeNXKAaJmFXu6A80ioJidE8L+DWujFmLOIRBlQv0+KD4txQNaz/tqCV6OZUGeocqa61MR9+d
	sKQs8CFP5ba3JhSG66mzwCYbKRAjhZR6RdOShYUJIkta0OrsrMJxwzlpr1hH98SS0ehOkdNLAIdIT
	pslm33hWBTd2tKlu9aJflovFoPQrOKIqagrqSxoOk5P7T6kbQBbnWkOSDwTt6k2cyps5qsAN1c0jQ
	j4S83w+BmEZ+tU/rM6DLiyl5Ly7cvZvG0iLhVHWUIFwVLIwizxhQ/fVzL1q3w6ALxLL/dLnDmVnBw
	sff86QcXP4cbOPPIbvIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icGjf-0002wM-Lo; Tue, 03 Dec 2019 22:33:35 +0000
Received: from mout.web.de ([212.227.17.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icGjW-0002vZ-DR
 for openwrt-devel@lists.openwrt.org; Tue, 03 Dec 2019 22:33:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1575412401;
 bh=CBzu8MwvYieZUPVZWwDiAZBJIV+zz5BypA1p1DyUgOI=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=KsYpz3O4hqmEQU45t3pw+q95vSZ28KHjGwv8KRnAsmpm+yN6czN0x5fm20MJZfssX
 1tp+nfSDo6FrbjaNEyctXAk2CccICXviZTpXd0woU4OHlUV+Z3m6O+yYe50XJ437Vo
 nEmNVR9Wi4EZ5nve/8pPYOutWrz1UYIlY55j9rfM=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from xanax.club.berlin.ccc.de ([195.160.172.42]) by smtp.web.de
 (mrweb103 [213.165.67.124]) with ESMTPSA (Nemesis) id
 0LnS8Q-1i7uWd0ize-00he65; Tue, 03 Dec 2019 23:33:21 +0100
From: Moritz Warning <moritzwarning@web.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  3 Dec 2019 23:33:13 +0100
Message-Id: <20191203223313.11820-1-moritzwarning@web.de>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:xu7oO2kxi2LYfzMSxz7Yi3thLTQU6KavGQ9rekeiq2cLvEZsoe/
 ZWQJLwo9vE+H5VlJg0d/rfWQ09Me8HH+NF4V9gUSwFwJLmXYaEcxxxFvqqOtGgqt9XZfhvg
 mAv70EBlGzjaZgHxkZBtHHsQP96e/21oWhFnUoy6uQosDFAiKGH61JFFRxgjbYWwY0V7cgh
 H01Fj4pglVXTYojkt+Zrg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:7Yb6ibSzCV4=:Wg3kn/t6nnwRGcfcrKdv4W
 RUKQfj9aIfy8paPhhTIlqewl/wJj4s+saLSVUoLzBq44hZpoKULtIgOCUYpT1ygi5pU8cy+e8
 e/WTKJ5SBa+m9GVGFEJNHlVYKja4qHsaX89zFZsyED1ILH8HxY0hD+5EIT76pOBcZ+q4K3CWw
 IwvDDu16swhWsmrwkU8nNqwXnxSw2LfleZq51WtdJI1CzKeZoglhz/BIpZn32HvHuNtTZaCoo
 onv2KV2POxHZKNBDCorPqdO+aQUOvV7V6y+TIGOcYNC4T3/TKgOCcb1sNNsEFQw3XnWJtKT9/
 ix612TzgPj62LDf5E6nkx2RQVNUM5MFJGhRiSj696X0cwChETFr/S8cOXpAGSrIIcnN/651EZ
 ys1j+cs3UziK9TWSSvNoGtMkOb8yW9GyS829QTVtsV5E4hBrpcLHZtBsEdUjLfPH/suMVeCFL
 mJHflyzwRFUxKzv9YsyEb2jEJe1yYrQvviHrm0tPTA5rvQWFuIEEmEIc7FNAA9wPw60CrR3WS
 kMR8yNrLRAMwt/IGQGmgAt/7258z11Tmc/Vz02n3LSCS8JqLEepaL9NVA/731mqClHLAC13c6
 8eHFrvbUfgYjHslKRlsFMCxNkG1Rj/jlQxIPeV44NvtJpQQse/GBLWtKaSPmQQrgeTB9tkSv0
 dz7wUQm1l6YJPon0rD7XJrm5ztb5MrbKq/NA7YeSEGNh8TcfgJplx/+2LroVHzahiB42BU904
 lzq5mIAsjiz9V75Q3d2XBfdva2cfxIMnve+jHdgDiGhSmUax4Lu1KLiAYxID5m49D3QFtpLez
 qkI07idZp1jqbu+pAw1MJJXUtRK7aLshjP90f7mbv9FyBjfX9OQrBgcHIib3pVxkLl1KGrvhV
 bnLISLxuvVMPObOAndlQguDXPo8aMPeXYgPyUeIIZih9eoRNyLpldJqV2VNtNXGVJaqcM+BAk
 +7RgLLs7cig57qv3xtD0d936ISf24+Py7/tT5xo8g7mAMeluID1ZqV9BOdSX9ImARW5IEw1Z/
 ZW+YDV2Q4yZ68TSzVlfxfKMeTNdkO+NJ6zo2+nqUM4PYYYAUpvWsOGJ/1K87+CbUALzUKq7Oq
 cFxlTJoDe6imxfHu1QwKe4JAxqQIFcXf7hachYLIp6St+hrEBaDVCp2DUmvGnY/xmrc4plkYa
 jFAOfMamkhpBjN8X2/TrgK/oq6uGFp9Fkihcz5ocU7GNHL8eD4fVGHq9jiS25lUGBCGKjCJg/
 +1yP9Tp2aJVevIMsRj5SlneM39M1F/QXA2eYBtI5VQ30iHGp77Z257FIKADM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_143326_789824_B2A93004 
X-CRM114-Status: UNSURE (   6.76  )
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
Subject: [OpenWrt-Devel] [PATCH v2] ramips: fix inverted reset led for
 ravpower wd03
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

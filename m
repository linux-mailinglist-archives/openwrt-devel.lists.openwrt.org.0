Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5AC6EF13F
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 00:40:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/TdVWIjrHxNCdL/lYeKcEb/4MBWn3EueWKp2ndfBRSY=; b=s9wdJq1LJK/pB2
	nCWbeiCNBrsRSJvQtWVdi+Rl83vavsRFV9h+T5lT9Q63nDwkNvkbXl3NUGW7MVWxk3QDHRI8OuVPS
	UX95AjUl7dhVafTEvLonhWr+fqsLPBUqZd+QSPe9dQMPJz8pK70+q4z8PmhoPpUTCFa0PbOwOAKme
	xy2AMRmH+2RV73D2NEnYqznnvAetrj0K1bvcbFGldYgPgK1Mmx3TrXo0JQPi+U90Xu1Lu120LYXvi
	241fMDcpYJdJ/P7hRomcmH66WgUUNJ4CNSrp+j+OFPQUklDd3L75ix4C3t+zHK/HfIAsUxKmeE6xP
	Unu6SajBdy5J+dYUnMjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRlx3-0005Ja-2y; Mon, 04 Nov 2019 23:40:01 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRlwv-0005IB-Fh
 for openwrt-devel@lists.openwrt.org; Mon, 04 Nov 2019 23:39:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1572910790;
 s=strato-dkim-0002; d=heimpold.de;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=3ybRrhgTmHXMKqoRrkaIqzLYkiOwpLRP4LUP2oDxrY8=;
 b=H1lFk473RMb5SVPqa5rq4Q/y8xYX79r1p06sC/Q+TV4+J6/Ir/H/hSqNviSXa+wRPY
 5icX8NtGtOFX1Q+HsLeGWSh3KTn1UA87Zve/YQCz98xDf92qc0MDmnQpqx2EEEd/NCHw
 dFtlSaUG5MCwdC3l6Lb0z4lJCt2ORJM+lISNRZMIhwRxto3qhggQwjpafoODYu+YQ3k3
 Et7/6fEg18LBBWe3v3KBB1YKOuUf+KCf4gKY2CVSo3UKe2cuDhxaNfytayc1M0YtdYV2
 ri4le6W49nsINV4gbrtdYcSgqRcw2Z/0UIq/+o+2+FpkkFn6lltiRMoLuhh33TRPp5hx
 tfRg==
X-RZG-AUTH: ":O2kGeEG7b/pS1EW8QnKjhhg/vO4pzqdNytq77N6ZKUSN7PfdWTGbO3oK8Gj1qr/lquvq"
X-RZG-CLASS-ID: mo00
Received: from tonne.mhei.heimpold.itr
 by smtp.strato.de (RZmta 44.29.0 DYNA|AUTH)
 with ESMTPSA id c008fcvA4NdoYtn
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Tue, 5 Nov 2019 00:39:50 +0100 (CET)
Received: from kerker.mhei.heimpold.itr (kerker.mhei.heimpold.itr
 [192.168.8.1])
 by tonne.mhei.heimpold.itr (Postfix) with ESMTP id 80E7815273B;
 Tue,  5 Nov 2019 00:39:49 +0100 (CET)
From: Michael Heimpold <mhei@heimpold.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  5 Nov 2019 00:39:41 +0100
Message-Id: <20191104233942.23783-3-mhei@heimpold.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191104233942.23783-1-mhei@heimpold.de>
References: <20191104233942.23783-1-mhei@heimpold.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_153954_134720_18F81BB5 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 2/3] mxs: switch to askconsole
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
Cc: Michael Heimpold <mhei@heimpold.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Remove the dedicated tty name and use askconsole to spawn the console
on serial debug uart.

Signed-off-by: Michael Heimpold <mhei@heimpold.de>
---
 target/linux/mxs/base-files/etc/inittab | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/mxs/base-files/etc/inittab b/target/linux/mxs/base-files/etc/inittab
index 9991ac4909..9820e7144b 100644
--- a/target/linux/mxs/base-files/etc/inittab
+++ b/target/linux/mxs/base-files/etc/inittab
@@ -1,3 +1,3 @@
 ::sysinit:/etc/init.d/rcS S boot
 ::shutdown:/etc/init.d/rcS K shutdown
-ttyAMA0::askfirst:/usr/libexec/login.sh
+::askconsole:/usr/libexec/login.sh
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

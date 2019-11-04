Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC04EF145
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 00:40:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YSg7b1jliQDUxrEaaxU/A9+E7pZG8fgA3w9oBL8q0RQ=; b=PJq0h3wufmR4py
	mxAlLwqI8SpUHi5JUVVLVdadxnaaoaJADem+ccKj4ItMoRyXQhuVivZbViYkst+qCenk5Z4il3wyf
	AuBU1sLshh8nwgQ11K/A36uvOB2tw8RyPRJK7J/MaFRE/XVMWx+GiOnaGXlEuVEcu/Cy1djY8tk8S
	9UgcurPeEorZCYqmqVYkJ+QY8Wp3Y3SmX5V/oGOmcOEMQHQEhU8j5/TOAxRjbH4nwRM6qgncQm5v+
	pwSk9qslRMf8SdtSchVpkaBHbupeTdcPb7/R+MKG4E25A72Xs5BpG9oTiDOrcwYRPOvKiUZpzYdx6
	jS6QZdEivm+Vn0Ny2fIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRlxm-0007ED-0i; Mon, 04 Nov 2019 23:40:46 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRlwv-0005I9-G4
 for openwrt-devel@lists.openwrt.org; Mon, 04 Nov 2019 23:39:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1572910790;
 s=strato-dkim-0002; d=heimpold.de;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=xkFZ7ZvNNf0UdlYaRqUrPc/mSp7LtDsL7D03YxUwMvs=;
 b=diAI1l0bED4fyZbBaoBRtORlZFGJLKf2fpePIT2OlK/s550AlEqqh/+EqCBtW/zTh9
 ykMFaM+195p1N7hn+uMDHz0OcvZudKKvNFfqO91jo0dgyOi8WW7xHcCW9Jpoz3L8teV5
 /btG/JTbV+Y8a6zLmsiZ1UFRIc0nVuLedUVPhodMfgAzlV862mZ8oDODBeWmJFqhGjXS
 Ivju3TU1+lPt0z6QkHPOiGKk3Xf8CN71i62eZNwt+zomK04ouapejw3k8YiL0/F5VMo4
 CVkR87UbPEwKHbMebIslJ3I0S1upsr6qi+zviwkeDIcN4Nya+nEvzf4jF8iriuxy9AO8
 0dmg==
X-RZG-AUTH: ":O2kGeEG7b/pS1EW8QnKjhhg/vO4pzqdNytq77N6ZKUSN7PfdWTGbO3oK8Gj1qr/lquvq"
X-RZG-CLASS-ID: mo00
Received: from tonne.mhei.heimpold.itr
 by smtp.strato.de (RZmta 44.29.0 DYNA|AUTH)
 with ESMTPSA id c008fcvA4NdoYtm
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Tue, 5 Nov 2019 00:39:50 +0100 (CET)
Received: from kerker.mhei.heimpold.itr (kerker.mhei.heimpold.itr
 [192.168.8.1])
 by tonne.mhei.heimpold.itr (Postfix) with ESMTP id 5BD58152633;
 Tue,  5 Nov 2019 00:39:49 +0100 (CET)
From: Michael Heimpold <mhei@heimpold.de>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  5 Nov 2019 00:39:39 +0100
Message-Id: <20191104233942.23783-1-mhei@heimpold.de>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_153954_129678_C3791F2E 
X-CRM114-Status: UNSURE (   6.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:10 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 0/3] Further preparations for USB gadget
 usage
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

This patch series bundles some more steps towards the usage
of I2SE Duckbills as USB gadget devices.

Michael Heimpold (3):
  procd: start additional consoles during hotplugging
  mxs: switch to askconsole
  mxs: start a console on USB gadget serial ports

 package/system/procd/Makefile           | 2 +-
 package/system/procd/files/hotplug.json | 4 ++++
 target/linux/mxs/base-files/etc/inittab | 3 ++-
 3 files changed, 7 insertions(+), 2 deletions(-)

-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A691966AD
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Mar 2020 15:21:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+QZUD/XLNlul7cTOXqgUxjqbKv8jiLyBgOdB9U7TagY=; b=MCNOvZxaYhoe0f
	ImyWbxw+0pb267B7O9tWKWn/de+M1Mkl/JSG93j8mOj6F8VD5UNRQBy1o8XZzB4kEs9l25MYqlBje
	DE+Ydn4hkWJCLZw/J4Wgh1vi4C08d9ApYzivwFxZw/M1bi9F/dayOsZgEqZLO11jn2m1HyUu4mqLK
	Y/9Cc5hqDwmEDTWuLZhL3vxc2UnxUWR13LHdv5JhR9cpG27XW8UYs2Kg1iC2QGlHU+kSF0MRcPcp5
	1TzLJlbcEGi37iIiTGL3DXjbtn+aBqI4pyPg5owglaG6oK6/Nn1pDdORttCfy+/jXNa2x4xzFHgAo
	VewgEIdEvedVBNHZWodg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jICLH-0008Or-Hl; Sat, 28 Mar 2020 14:21:43 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jICKf-0007jV-On
 for openwrt-devel@lists.openwrt.org; Sat, 28 Mar 2020 14:21:07 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id D63FE600A7;
 Sat, 28 Mar 2020 15:21:00 +0100 (CET)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org D63FE600A7
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org D63FE600A7
Received: by supercopter (sSMTP sendmail emulation);
 Sat, 28 Mar 2020 15:21:00 +0100
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 28 Mar 2020 15:20:24 +0100
Message-Id: <20200328142032.37734-4-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200328142032.37734-1-hacks@slashdirt.org>
References: <20200328142032.37734-1-hacks@slashdirt.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_ADSP_ALL,
 NO_DNS_FOR_FROM,TXREP,UNPARSEABLE_RELAY shortcircuit=no autolearn=no
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_072105_997367_BB80707E 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.1 DKIM_ADSP_ALL          No valid author signature, domain signs all mail
Subject: [OpenWrt-Devel] [PATCH 03/11] generic: CONFIG_MTD_ROUTERBOOT_PARTS
 is not set
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
Cc: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U2lnbmVkLW9mZi1ieTogVGhpYmF1dCBWQVLDiE5FIDxoYWNrc0BzbGFzaGRpcnQub3JnPgotLS0K
IHRhcmdldC9saW51eC9nZW5lcmljL2NvbmZpZy00LjE0IHwgMSArCiB0YXJnZXQvbGludXgvZ2Vu
ZXJpYy9jb25maWctNC4xOSB8IDEgKwogdGFyZ2V0L2xpbnV4L2dlbmVyaWMvY29uZmlnLTUuNCAg
fCAxICsKIDMgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvdGFy
Z2V0L2xpbnV4L2dlbmVyaWMvY29uZmlnLTQuMTQgYi90YXJnZXQvbGludXgvZ2VuZXJpYy9jb25m
aWctNC4xNAppbmRleCBlNDIxMzk3NDRhLi44ZjRlNDI0Y2U2IDEwMDY0NAotLS0gYS90YXJnZXQv
bGludXgvZ2VuZXJpYy9jb25maWctNC4xNAorKysgYi90YXJnZXQvbGludXgvZ2VuZXJpYy9jb25m
aWctNC4xNApAQCAtMjg4Nyw2ICsyODg3LDcgQEAgQ09ORklHX01URF9SRURCT09UX0RJUkVDVE9S
WV9CTE9DSz0tMQogIyBDT05GSUdfTVREX1JFREJPT1RfUEFSVFNfVU5BTExPQ0FURUQgaXMgbm90
IHNldAogIyBDT05GSUdfTVREX1JPTSBpcyBub3Qgc2V0CiBDT05GSUdfTVREX1JPT1RGU19ST09U
X0RFVj15CisjIENPTkZJR19NVERfUk9VVEVSQk9PVF9QQVJUUyBpcyBub3Qgc2V0CiAjIENPTkZJ
R19NVERfU0xSQU0gaXMgbm90IHNldAogIyBDT05GSUdfTVREX1NNX0NPTU1PTiBpcyBub3Qgc2V0
CiAjIENPTkZJR19NVERfU1BJTkFORF9NVDI5RiBpcyBub3Qgc2V0CmRpZmYgLS1naXQgYS90YXJn
ZXQvbGludXgvZ2VuZXJpYy9jb25maWctNC4xOSBiL3RhcmdldC9saW51eC9nZW5lcmljL2NvbmZp
Zy00LjE5CmluZGV4IDQxOGI4NWE3MzguLjU0YjRhNGExYjEgMTAwNjQ0Ci0tLSBhL3RhcmdldC9s
aW51eC9nZW5lcmljL2NvbmZpZy00LjE5CisrKyBiL3RhcmdldC9saW51eC9nZW5lcmljL2NvbmZp
Zy00LjE5CkBAIC0zMDQzLDYgKzMwNDMsNyBAQCBDT05GSUdfTVREX1JFREJPT1RfRElSRUNUT1JZ
X0JMT0NLPS0xCiAjIENPTkZJR19NVERfUkVEQk9PVF9QQVJUU19VTkFMTE9DQVRFRCBpcyBub3Qg
c2V0CiAjIENPTkZJR19NVERfUk9NIGlzIG5vdCBzZXQKIENPTkZJR19NVERfUk9PVEZTX1JPT1Rf
REVWPXkKKyMgQ09ORklHX01URF9ST1VURVJCT09UX1BBUlRTIGlzIG5vdCBzZXQKICMgQ09ORklH
X01URF9TTFJBTSBpcyBub3Qgc2V0CiAjIENPTkZJR19NVERfU01fQ09NTU9OIGlzIG5vdCBzZXQK
ICMgQ09ORklHX01URF9TUElOQU5EX01UMjlGIGlzIG5vdCBzZXQKZGlmZiAtLWdpdCBhL3Rhcmdl
dC9saW51eC9nZW5lcmljL2NvbmZpZy01LjQgYi90YXJnZXQvbGludXgvZ2VuZXJpYy9jb25maWct
NS40CmluZGV4IDJiZGIwZjVmNzUuLmUzOTU0MWM3OWYgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51
eC9nZW5lcmljL2NvbmZpZy01LjQKKysrIGIvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvY29uZmlnLTUu
NApAQCAtMzIzOSw2ICszMjM5LDcgQEAgQ09ORklHX01URF9SRURCT09UX0RJUkVDVE9SWV9CTE9D
Sz0tMQogIyBDT05GSUdfTVREX1JFREJPT1RfUEFSVFNfVU5BTExPQ0FURUQgaXMgbm90IHNldAog
IyBDT05GSUdfTVREX1JPTSBpcyBub3Qgc2V0CiBDT05GSUdfTVREX1JPT1RGU19ST09UX0RFVj15
CisjIENPTkZJR19NVERfUk9VVEVSQk9PVF9QQVJUUyBpcyBub3Qgc2V0CiAjIENPTkZJR19NVERf
U0xSQU0gaXMgbm90IHNldAogIyBDT05GSUdfTVREX1NNX0NPTU1PTiBpcyBub3Qgc2V0CiAjIENP
TkZJR19NVERfU1BJTkFORF9NVDI5RiBpcyBub3Qgc2V0Ci0tIAoyLjExLjAKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxp
bmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Bl
bndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==

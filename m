Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7878919DDDA
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 Apr 2020 20:22:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IhtSzhUbWJgBo7hfd/PtOPjbYcnpDPmb+/1UKKvovLQ=; b=RA5PhQNCRNP9jm
	YEwrvmizkSy7wUrA0bzvCyx8t/dcPDKdVS6QWl5uD1FJOGXwMVP4SRLgleHsOli52vv4QetYBRzh5
	iFgaAG9hMHw6qbBBwb0DTl8B/dBRsAId2FaQmdMmMcCanS8Dldm/O07kzIMPRBZzOMdNYMZEgzF5V
	MZNJeaBz1vHl8UMavrwROaW89GytdcFNgpYr7nuM1cqBbrwg73Zf1qVSMkbaBRh+kqHWFceMV7Hbk
	vztVY2GzPnfBGmI9DtZ7/bAeHhOAGOewb5KXLbdNWMLhVxTpnP4dGSLtBOyt210C2FBYgxhmrN9wJ
	ZcGWFMiQ3iyqkGmOIA6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKQxk-0002Q3-Bb; Fri, 03 Apr 2020 18:22:40 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKQwr-0001RA-Om
 for openwrt-devel@lists.openwrt.org; Fri, 03 Apr 2020 18:21:47 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id 77AB260FD5;
 Fri,  3 Apr 2020 20:21:33 +0200 (CEST)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org 77AB260FD5
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 77AB260FD5
Received: by supercopter (sSMTP sendmail emulation);
 Fri, 03 Apr 2020 20:21:33 +0200
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 Apr 2020 20:20:52 +0200
Message-Id: <20200403182056.43730-5-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200403182056.43730-1-hacks@slashdirt.org>
References: <20200403182056.43730-1-hacks@slashdirt.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_ADSP_ALL,
 NO_DNS_FOR_FROM,TXREP,UNPARSEABLE_RELAY shortcircuit=no autolearn=no
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_112145_977507_958E672C 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 1.1 DKIM_ADSP_ALL          No valid author signature, domain signs all mail
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 4/8] generic: CONFIG_MIKROTIK is not set
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
aWctNC4xNAppbmRleCBlNDIxMzk3NDRhLi45ZTliMGUxZDdjIDEwMDY0NAotLS0gYS90YXJnZXQv
bGludXgvZ2VuZXJpYy9jb25maWctNC4xNAorKysgYi90YXJnZXQvbGludXgvZ2VuZXJpYy9jb25m
aWctNC4xNApAQCAtMjY2MSw2ICsyNjYxLDcgQEAgQ09ORklHX01FU1NBR0VfTE9HTEVWRUxfREVG
QVVMVD00CiAjIENPTkZJR19NSUdSQVRJT04gaXMgbm90IHNldAogQ09ORklHX01JST15CiAjIENP
TkZJR19NSUtST1RJS19SQjUzMiBpcyBub3Qgc2V0CisjIENPTkZJR19NSUtST1RJSyBpcyBub3Qg
c2V0CiAjIENPTkZJR19NSU5JWF9GUyBpcyBub3Qgc2V0CiAjIENPTkZJR19NSU5JWF9GU19OQVRJ
VkVfRU5ESUFOIGlzIG5vdCBzZXQKICMgQ09ORklHX01JTklYX1NVQlBBUlRJVElPTiBpcyBub3Qg
c2V0CmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvZ2VuZXJpYy9jb25maWctNC4xOSBiL3Rhcmdl
dC9saW51eC9nZW5lcmljL2NvbmZpZy00LjE5CmluZGV4IDMyMjA5Njc0YmEuLmVlN2YzZjEzNTIg
MTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC9nZW5lcmljL2NvbmZpZy00LjE5CisrKyBiL3Rhcmdl
dC9saW51eC9nZW5lcmljL2NvbmZpZy00LjE5CkBAIC0yODEwLDYgKzI4MTAsNyBAQCBDT05GSUdf
TUVTU0FHRV9MT0dMRVZFTF9ERUZBVUxUPTQKICMgQ09ORklHX01JR1JBVElPTiBpcyBub3Qgc2V0
CiBDT05GSUdfTUlJPXkKICMgQ09ORklHX01JS1JPVElLX1JCNTMyIGlzIG5vdCBzZXQKKyMgQ09O
RklHX01JS1JPVElLIGlzIG5vdCBzZXQKICMgQ09ORklHX01JTklYX0ZTIGlzIG5vdCBzZXQKICMg
Q09ORklHX01JTklYX0ZTX05BVElWRV9FTkRJQU4gaXMgbm90IHNldAogIyBDT05GSUdfTUlOSVhf
U1VCUEFSVElUSU9OIGlzIG5vdCBzZXQKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9nZW5lcmlj
L2NvbmZpZy01LjQgYi90YXJnZXQvbGludXgvZ2VuZXJpYy9jb25maWctNS40CmluZGV4IGI1ZGVl
ZjMxZGUuLjE5ODI1ZTQ5NGMgMTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC9nZW5lcmljL2NvbmZp
Zy01LjQKKysrIGIvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvY29uZmlnLTUuNApAQCAtMjk4OSw2ICsy
OTg5LDcgQEAgQ09ORklHX01FU1NBR0VfTE9HTEVWRUxfREVGQVVMVD00CiAjIENPTkZJR19NSUdS
QVRJT04gaXMgbm90IHNldAogQ09ORklHX01JST15CiAjIENPTkZJR19NSUtST1RJS19SQjUzMiBp
cyBub3Qgc2V0CisjIENPTkZJR19NSUtST1RJSyBpcyBub3Qgc2V0CiAjIENPTkZJR19NSU5JWF9G
UyBpcyBub3Qgc2V0CiAjIENPTkZJR19NSU5JWF9GU19OQVRJVkVfRU5ESUFOIGlzIG5vdCBzZXQK
ICMgQ09ORklHX01JTklYX1NVQlBBUlRJVElPTiBpcyBub3Qgc2V0Ci0tIAoyLjExLjAKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVs
IG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlz
dHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==

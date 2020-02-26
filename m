Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0D716F62B
	for <lists+openwrt-devel@lfdr.de>; Wed, 26 Feb 2020 04:38:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From:Date:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nmB7k4uuFCzGsu3QmEhwpf/bcfHcpJC+kqO0bDIiSUM=; b=XCYdTd/Zx9mUrk
	kP41JIkWt5dgoAC+wIvESyLnUsZlwLipIyy1il/6u5+4EI7QlmLKlYlmfDbEob9flmqvATFmQDpqn
	zy+hyPzMWCbSteCESLnasjpeFxEul0Qys84DPwogi8a4I1jBFGjrT/8l7XQkTg6+sqgw0SFvj8ouX
	yGmx1+eRQq5SgUBFL1e2uy3s3lwJUzRaQ5G9MBVSBlp6SXNPRjGT2xsg1J138CVRn+ILSS4Eq3I/n
	iJ/2l8kZRD5uKHv4j00Mw2sOPEf5zN0mjBYGmnBQKvsfybTuJVfwd2gewg4SvF05TVO5YXN61yFH4
	EFIxAOZUvVDDJpsHMBGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6nWf-0005VQ-HO; Wed, 26 Feb 2020 03:38:21 +0000
Received: from util-01.infra.openwrt.org ([46.101.232.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6nWU-0005Ut-HU
 for openwrt-devel@lists.openwrt.org; Wed, 26 Feb 2020 03:38:12 +0000
Received: from mail.onyx.syn-alias.com ([206.152.134.66]
 helo=smtp.centurylink.net)
 by util-01.infra.openwrt.org with esmtp (Exim 4.89)
 (envelope-from <shep971@centurylink.net>) id 1j6nWS-0002w7-Am
 for openwrt-devel@openwrt.org; Tue, 25 Feb 2020 22:38:08 -0500
DKIM-Signature: v=1; a=rsa-sha1; d=centurylink.net; s=ctl201402;
 c=relaxed/simple; q=dns/txt; i=@centurylink.net; t=1582688274;
 h=From:Subject:Date:To:MIME-Version:Content-Type;
 bh=o2kbDlypweyVku38YMnBK3OBpVU=;
 b=vP/MHebeb0b0CK0Z0vhsaQw9XPv/MwNRAMFUTmC8qP8WDhSJTAGFlUcDzJft6WwU
 Or8WdNLwkv77L+ExMThiIHHHFOXKZmSAgoHA77pXy2xZnv2rNNUejL4rfoI41Qk2
 iNw7EOojeaaqjkXCo95/3OjGgeU1IW3lCnGQSoammv60JdsFxqUSZ5Ii5KkiKBNl
 oZVGpVqBS6Zw3dX72NnGEJFOxkjw+YOTJ3BnEZ/s7uCvNYMCXRT9Hm9if/1PPT3x
 WMljb1THGNpKKCmWlxwwtrxjxt7ZvbYAYEc00b8ty/Bq/0NBLEFDPrOLnWw4z2sn
 wTaZGYKI15NwHis1ltgQbA==;
X_CMAE_Category: , ,
X-CNFS-Analysis: v=2.3 cv=U9Hs8tju c=1 sm=1 tr=0
 a=n6W1qF9bqTqjlf0I0+Sn6Q==:117 a=n6W1qF9bqTqjlf0I0+Sn6Q==:17
 a=KGjhK52YXX0A:10 a=IkcTkHD0fZMA:10 a=l697ptgUJYAA:10 a=AsiJWZegAdEA:10
 a=eQrCS-SpgXYA:10 a=I_5RNyk1AAAA:8 a=hGsTIYZL5ywUeeTzKykA:9
 a=abgRF2LVGs-E51MS:21 a=Z86HLZyj19qNkXei:21 a=QEXdDO2ut3YA:10
 a=Eh9yxdLE6B1twWrs3SXz:22
X-CM-Score: 0
X-Scanned-by: Cloudmark Authority Engine
Feedback-ID: dfw:ctl:res:onyx
X-Authed-Username: c2hlcDk3MUBjZW50dXJ5bGluay5uZXQ=
Authentication-Results: smtp04.onyx.dfw.sync.lan
 smtp.user=shep971@centurylink.net; auth=pass (LOGIN)
Received: from [71.32.5.18] ([71.32.5.18:57444] helo=centurylink.net)
 by smtp.centurylink.net (envelope-from <shep971@centurylink.net>)
 (ecelerity 3.6.25.56547 r(Core:3.6.25.0)) with ESMTPSA
 (cipher=AES256-GCM-SHA384) 
 id 37/22-07829-118E55E5; Tue, 25 Feb 2020 22:37:54 -0500
Date: Tue, 25 Feb 2020 19:37:44 -0800
From: "Heppler, J. Scott" <shep971@centurylink.net>
To: openwrt-devel@openwrt.org
Message-ID: <20200226033744.GA28953@centurylink.net>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -1.8 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-01.infra.openwrt.org", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 jo@mein.io for details.
 Content preview: Signed-off-by: J. Scott Heppler ramips: add support for
 TRENDnet
 TEW-810DR Exact hardware clone for the D-Link DIR-810L. 
 Content analysis details:   (-1.8 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: centurylink.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (shep971[at]centurylink.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (shep971[at]centurylink.net)
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_193810_732884_B15738FD 
X-CRM114-Status: UNSURE (   4.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [46.101.232.90 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [shep971[at]centurylink.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shep971[at]centurylink.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] ramips: add TRENDnet TEW-810DR support
 -corrected
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U2lnbmVkLW9mZi1ieTogSi4gU2NvdHQgSGVwcGxlciA8c2hlcDk3MUBjZW50dXJ5bGluay5uZXQ+
CgpyYW1pcHM6IGFkZCBzdXBwb3J0IGZvciBUUkVORG5ldCBURVctODEwRFIKCkV4YWN0IGhhcmR3
YXJlIGNsb25lIGZvciB0aGUgRC1MaW5rIERJUi04MTBMLgoKU3BlY2lmaWNhdGlvbjoKCiAqIE1l
ZGlhVGVrIE1UNzYyMEEgKDU4MCBNaHopCiAqIDggTUIgb2YgRkxBU0gKICogNjQgTUIgb2YgUkFN
CiAqIDV4IDEwLzEwMCBNYnBzIEV0aGVybmV0ICgxIFdBTiBhbmQgNCBMQU4pCiAqIFVBUlQgaGVh
ZGVyIG9uIFBDQiAoNTc2MDAgOG4xKQogKiAyeCBCaUNvbG9yIExFRCAoR1BJTy1jb250cm9sbGVk
KQogKiAyeCBidXR0b24gLSBwb3dlciBhbmQgcmVzZXQKICogVS1ib290IGJvb3Rsb2FkZXIKCklu
c3RhbGxhdGlvbjoKClRoZSBzeXN1cGdyYWRlLmJpbiBpbWFnZSBuZWVkcyB0byBoYXZlIGEgY2Ft
ZW8gaGFyZHdhcmUgSUQgYXBwZW5kZWQKd2l0aCBuY2NfYXR0X2h3aWQuICBuY2NfYXR0X2h3aWQg
aXMgYXZhaWxhYmxlIGluIHRoZSBHUEwgU291cmNlCmRvd25sb2FkIGZvciBlaXRoZXIgdGhlIFRF
Vy04MTBEUiBvciBESVItODEwTCBhbmQgaXMgbG9jYXRlZCBhdApzb3VyY2UvdXNlci93b2xmL2Nh
bWVvL25jYy9ob3N0VG9vbHMKVGhlIGludm9jYXRpb24gaXM6Cm5jY19hdHRfaHdpZCAtZiB0ZXct
ODEwLXNxdWFzaGZzLWZhY3RvcnkuYmluIC1hIC1tIOKAnFRFVy04MTBEUuKAnQogLUgg4oCcMS4w
UuKAnSAtciDigJxXV+KAnSAtYyDigJwxLjDigJ0KTW9yZSBpbmZvcm1hdGlvbiBpcyBhdmFpbGFi
bGUgaW4gdGhlIGRldmljZSBwYWdlIGZvciBURVctODEwRFIuClRoZSBhcHBlbmRlZCBpbWFnZSBj
YW4gdGhlbiBiZSBmbGFzaCB2aWEgdGhlIFdlYiByZXNjdWUgaW50ZXJmYWNlCjE5Mi4xNjguMTAu
MSBvciBURlRQJ3MgdG8gdGhlIHNhbWUgSVAgYWRkcmVzcy4gIFN1YnNlcXVlbnQgdXBncmFkZXMK
Y2FuIGJlIGRvbmUgdXNpbmcgdGhlIEx1Y2kgd2ViIGludGVyZmFjZSBvciB0aGUgc3NoIGNvbW1h
bmQgbGluZSBwZXIgdGhlCk9wZW5XUlQgZG9jdW1lbnRhdGlvbgoKLS0tCiAuLi4vcmFtaXBzL2Jh
c2UtZmlsZXMvZXRjL2JvYXJkLmQvMDJfbmV0d29yayAgfCAgIDEgKwogdGFyZ2V0L2xpbnV4L3Jh
bWlwcy9iYXNlLWZpbGVzL2xpYi9yYW1pcHMuc2ggIHwgICAzICsKIHRhcmdldC9saW51eC9yYW1p
cHMvZHRzL1RFVy04MTBEUi5kdHMgICAgICAgICB8IDE1OSArKysrKysrKysrKysrKysrKysKIHRh
cmdldC9saW51eC9yYW1pcHMvaW1hZ2UvbXQ3NjIwLm1rICAgICAgICAgICB8ICAgOCArCiA0IGZp
bGVzIGNoYW5nZWQsIDE3MSBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgdGFyZ2V0
L2xpbnV4L3JhbWlwcy9kdHMvVEVXLTgxMERSLmR0cwoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51
eC9yYW1pcHMvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8wMl9uZXR3b3JrIGIvdGFyZ2V0L2xpbnV4
L3JhbWlwcy9iYXNlLWZpbGVzL2V0Yy9ib2FyZC5kLzAyX25ldHdvcmsKaW5kZXggZjc0M2NlODUx
YS4uYTY5MmVmNmVhNCAxMDA3NTUKLS0tIGEvdGFyZ2V0L2xpbnV4L3JhbWlwcy9iYXNlLWZpbGVz
L2V0Yy9ib2FyZC5kLzAyX25ldHdvcmsKKysrIGIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9iYXNlLWZp
bGVzL2V0Yy9ib2FyZC5kLzAyX25ldHdvcmsKQEAgLTExNiw2ICsxMTYsNyBAQCByYW1pcHNfc2V0
dXBfaW50ZXJmYWNlcygpCiAJc2FwLWczMjAwdTN8XAogCXNrLXdiOHxcCiAJdGVsY28tZWxlY3Ry
b25pY3MseDF8XAorCXRldy04MTBkcnxcCiAJdG90b2xpbmssbHIxMjAwfFwKIAl1bmllbGVjLHU3
NjIxLTA2LTI1Nm0tMTZtfFwKIAl1bmllbGVjLHU3NjIxLTA2LTUxMm0tNjRtfFwKZGlmZiAtLWdp
dCBhL3RhcmdldC9saW51eC9yYW1pcHMvYmFzZS1maWxlcy9saWIvcmFtaXBzLnNoIGIvdGFyZ2V0
L2xpbnV4L3JhbWlwcy9iYXNlLWZpbGVzL2xpYi9yYW1pcHMuc2gKaW5kZXggMDkzMzAzODkyYy4u
M2NlNDI0MjFlZSAxMDA3NTUKLS0tIGEvdGFyZ2V0L2xpbnV4L3JhbWlwcy9iYXNlLWZpbGVzL2xp
Yi9yYW1pcHMuc2gKKysrIGIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9iYXNlLWZpbGVzL2xpYi9yYW1p
cHMuc2gKQEAgLTQ3OCw2ICs0NzgsOSBAQCByYW1pcHNfYm9hcmRfZGV0ZWN0KCkgewogCSoiVEVX
LTcxNFRSVSIpCiAJCW5hbWU9InRldy03MTR0cnUiCiAJCTs7CisJKiJURVctODEwRFIiKQorICAg
ICAgICAgICAgICAgIG5hbWU9InRldy04MTBkciIKKyAgICAgICAgICAgICAgICA7OwogCSoiVGlt
ZWNsb3VkIikKIAkJbmFtZT0idGltZWNsb3VkIgogCQk7OwpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xp
bnV4L3JhbWlwcy9kdHMvVEVXLTgxMERSLmR0cyBiL3RhcmdldC9saW51eC9yYW1pcHMvZHRzL1RF
Vy04MTBEUi5kdHMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMC4uNmJlMjBj
MWRkYQotLS0gL2Rldi9udWxsCisrKyBiL3RhcmdldC9saW51eC9yYW1pcHMvZHRzL1RFVy04MTBE
Ui5kdHMKQEAgLTAsMCArMSwxNTkgQEAKKy9kdHMtdjEvOworCisjaW5jbHVkZSAibXQ3NjIwYS5k
dHNpIgorCisjaW5jbHVkZSA8ZHQtYmluZGluZ3MvZ3Bpby9ncGlvLmg+CisjaW5jbHVkZSA8ZHQt
YmluZGluZ3MvaW5wdXQvaW5wdXQuaD4KKworLyB7CisJY29tcGF0aWJsZSA9ICJ0cmVuZG5ldCx0
ZXctODEwZHIiLCAicmFsaW5rLG10NzYyMGEtc29jIjsKKwltb2RlbCA9ICJUUkVORG5ldCBURVct
ODEwRFIiOworCisJYWxpYXNlcyB7CisJCWxlZC1ib290ID0gJmxlZF9wb3dlcl9ncmVlbjsKKwkJ
bGVkLWZhaWxzYWZlID0gJmxlZF9wb3dlcl9ncmVlbjsKKwkJbGVkLXJ1bm5pbmcgPSAmbGVkX3Bv
d2VyX2dyZWVuOworCQlsZWQtdXBncmFkZSA9ICZsZWRfcG93ZXJfZ3JlZW47CisJfTsKKworCWtl
eXMgeworCQljb21wYXRpYmxlID0gImdwaW8ta2V5cy1wb2xsZWQiOworCQlwb2xsLWludGVydmFs
ID0gPDIwPjsKKworCQlyZXNldCB7CisJCQlsYWJlbCA9ICJyZXNldCI7CisJCQlncGlvcyA9IDwm
Z3BpbzAgMSBHUElPX0FDVElWRV9MT1c+OworCQkJbGludXgsY29kZSA9IDxCVE5fMD47CisJCX07
CisKKwkJd3BzIHsKKwkJCWxhYmVsID0gIndwcyI7CisJCQlncGlvcyA9IDwmZ3BpbzAgMiBHUElP
X0FDVElWRV9MT1c+OworCQkJbGludXgsY29kZSA9IDxCVE5fMD47CisJCX07CisJfTsKKworCWxl
ZHMgeworCQljb21wYXRpYmxlID0gImdwaW8tbGVkcyI7CisKKwkJbGVkX3Bvd2VyX2dyZWVuOiBw
b3dlciB7CisJCQlsYWJlbCA9ICJ0ZXctODEwZHI6Z3JlZW46cG93ZXIiOworCQkJZ3Bpb3MgPSA8
JmdwaW8wIDkgR1BJT19BQ1RJVkVfSElHSD47CisJCX07CisKKwkJd2FuIHsKKwkJCWxhYmVsID0g
InRldy04MTBkcjpvcmFuZ2U6d2FuIjsKKwkJCWdwaW9zID0gPCZncGlvMCAxMiBHUElPX0FDVElW
RV9ISUdIPjsKKwkJfTsKKworCQlwb3dlcjIgeworCQkJbGFiZWwgPSAidGV3LTgxMGRyOm9yYW5n
ZTpwb3dlciI7CisJCQlncGlvcyA9IDwmZ3BpbzAgMTMgR1BJT19BQ1RJVkVfSElHSD47CisJCX07
CisJfTsKK307CisKKyZzcGkwIHsKKwlzdGF0dXMgPSAib2theSI7CisKKwltMjVwODBAMCB7CisJ
CWNvbXBhdGlibGUgPSAiamVkZWMsc3BpLW5vciI7CisJCXJlZyA9IDwwPjsKKwkJc3BpLW1heC1m
cmVxdWVuY3kgPSA8MTAwMDAwMDA+OworCisJCXBhcnRpdGlvbnMgeworCQkJY29tcGF0aWJsZSA9
ICJmaXhlZC1wYXJ0aXRpb25zIjsKKwkJCSNhZGRyZXNzLWNlbGxzID0gPDE+OworCQkJI3NpemUt
Y2VsbHMgPSA8MT47CisKKwkJCXBhcnRpdGlvbkAwIHsKKwkJCQlsYWJlbCA9ICJ1LWJvb3QiOwor
CQkJCXJlZyA9IDwweDAgMHgzMDAwMD47CisJCQkJcmVhZC1vbmx5OworCQkJfTsKKworCQkJcGFy
dGl0aW9uQDMwMDAwIHsKKwkJCQlsYWJlbCA9ICJ1LWJvb3QtZW52IjsKKwkJCQlyZWcgPSA8MHgz
MDAwMCAweDEwMDAwPjsKKwkJCQlyZWFkLW9ubHk7CisJCQl9OworCisJCQlmYWN0b3J5OiBwYXJ0
aXRpb25ANDAwMDAgeworCQkJCWxhYmVsID0gImZhY3RvcnkiOworCQkJCXJlZyA9IDwweDQwMDAw
IDB4MTAwMDA+OworCQkJCXJlYWQtb25seTsKKwkJCX07CisKKwkJCWZhY3Rvcnk1ZzogcGFydGl0
aW9uQDUwMDAwIHsKKwkJCQlsYWJlbCA9ICJmYWN0b3J5NWciOworCQkJCXJlZyA9IDwweDUwMDAw
IDB4MTAwMDA+OworCQkJCXJlYWQtb25seTsKKwkJCX07CisKKwkJCXBhcnRpdGlvbkA2MDAwMCB7
CisJCQkJbGFiZWwgPSAiV29sZl9Db25maWciOworCQkJCXJlZyA9IDwweDYwMDAwIDB4MTAwMDA+
OworCQkJCXJlYWQtb25seTsKKwkJCX07CisKKwkJCXBhcnRpdGlvbkA3MDAwMCB7CisJCQkJbGFi
ZWwgPSAiTXlEbGluayI7CisJCQkJcmVnID0gPDB4NzAwMDAgMHg4MDAwMD47CisJCQkJcmVhZC1v
bmx5OworCQkJfTsKKworCQkJcGFydGl0aW9uQGUwMDAwIHsKKwkJCQlsYWJlbCA9ICJKZmZzMiI7
CisJCQkJcmVnID0gPDB4ZTAwMDAgMHg4MDAwMD47CisJCQkJcmVhZC1vbmx5OworCQkJfTsKKwor
CQkJcGFydGl0aW9uQDE3MDAwMCB7CisJCQkJY29tcGF0aWJsZSA9ICJkZW54LHVpbWFnZSI7CisJ
CQkJbGFiZWwgPSAiZmlybXdhcmUiOworCQkJCXJlZyA9IDwweDE3MDAwMCAweDY5MDAwMD47CisJ
CQl9OworCQl9OworCX07Cit9OworCismcGluY3RybCB7CisJc3RhdGVfZGVmYXVsdDogcGluY3Ry
bDAgeworCQlncGlvIHsKKwkJCXJhbGluayxncm91cCA9ICJtZGlvIiwgInJnbWlpMSIsICJpMmMi
LCAid2xlZCIsICJ1YXJ0ZiI7CisJCQlyYWxpbmssZnVuY3Rpb24gPSAiZ3BpbyI7CisJCX07CisJ
fTsKK307CisKKyZldGhlcm5ldCB7CisJbXRkLW1hYy1hZGRyZXNzID0gPCZmYWN0b3J5IDB4Mjg+
OworCW1lZGlhdGVrLHBvcnRtYXAgPSAibGxsbHciOworfTsKKworJmdzdyB7CisJbWVkaWF0ZWss
cG9ydDQgPSAiZXBoeSI7CisJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKKwlwaW5jdHJsLTAg
PSA8JmVwaHlfcGlucz47Cit9OworCismcGNpZSB7CisJc3RhdHVzID0gIm9rYXkiOworfTsKKwor
JndtYWMgeworCXJhbGluayxtdGQtZWVwcm9tID0gPCZmYWN0b3J5IDB4MD47CisJcGluY3RybC1u
YW1lcyA9ICJkZWZhdWx0IjsKKwlwaW5jdHJsLTAgPSA8JnBhX3BpbnM+OworCW10ZC1tYWMtYWRk
cmVzcyA9IDwmZmFjdG9yeSAweDI4PjsKK307CisKKyZwY2llMCB7CisJd2lmaUAwLDAgeworCQly
ZWcgPSA8MHgwMDAwIDAgMCAwIDA+OworCQltZWRpYXRlayxtdGQtZWVwcm9tID0gPCZmYWN0b3J5
IDB4ODAwMD47CisJCWllZWU4MDIxMS1mcmVxLWxpbWl0ID0gPDUwMDAwMDAgNjAwMDAwMD47CisJ
CW10ZC1tYWMtYWRkcmVzcyA9IDwmZmFjdG9yeSAweDI4PjsKKwkJbXRkLW1hYy1hZGRyZXNzLWlu
Y3JlbWVudCA9IDwyPjsKKwl9OworfTsKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9yYW1pcHMv
aW1hZ2UvbXQ3NjIwLm1rIGIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9pbWFnZS9tdDc2MjAubWsKaW5k
ZXggZmZmMTA0MjVhNy4uMGJjNjExMTk0NiAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L3JhbWlw
cy9pbWFnZS9tdDc2MjAubWsKKysrIGIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9pbWFnZS9tdDc2MjAu
bWsKQEAgLTY1MSw2ICs2NTEsMTQgQEAgZGVmaW5lIERldmljZS90cGxpbmtfYzIwLXYxCiBlbmRl
ZgogVEFSR0VUX0RFVklDRVMgKz0gdHBsaW5rX2MyMC12MQogCitkZWZpbmUgRGV2aWNlL3Rldy04
MTBkcgorICBEVFMgOj0gVEVXLTgxMERSCisgIERFVklDRV9QQUNLQUdFUyA6PSBrbW9kLW10NzZ4
MGUKKyAgREVWSUNFX1RJVExFIDo9IFRSRU5EbmV0IFRFVy04MTBEUgorICBJTUFHRV9TSVpFIDo9
IDY3MjBrCitlbmRlZgorVEFSR0VUX0RFVklDRVMgKz0gdGV3LTgxMGRyCisKIGRlZmluZSBEZXZp
Y2Uvdm9uZXRzX3ZhcjExbi0zMDAKICAgRFRTIDo9IFZBUjExTi0zMDAKICAgSU1BR0VfU0laRSA6
PSAkKHJhbGlua19kZWZhdWx0X2Z3X3NpemVfNE0pCi0tIAoyLjIwLjEKCi0tIApKLiBTY290dCBI
ZXBwbGVyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVs
Cg==

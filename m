Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A8719DE93
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 Apr 2020 21:30:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VF+RfmSd3P62iF1igghB+omIGj8gJZL09fu6Adh9FJ0=; b=a9KyzCYoByxVZp
	U1yExdhACtclOGqFNbHuEyCxMT4f36JcRqxwKmX59ZMHV3BnNcb5YuPjr4KmcbMKw/CmMas2cmc1n
	+c4VpVsHJuqH1qZMO+FLJf+KtPhTcu1hbEGWJA9TF1bCQ3/77l3A3rGnqUU5XzW56jrqe/XhGHNt1
	sWCjjpGKPAWdCabRQlctnU3vDX6lzA/z3f15XnuokGy8jeeSU//uZ7+2ZIvWQobGgo4oSHz7Ifca+
	M8WjSfaqnrLPsJof+Hte+L9Nmx2s5gTgMlYgtHrvIBMj3ZG42WCrhvyUpstpjtYjZ+dBBME8J6b/2
	74hWK18q+rhQ7Qy1Bn9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKS1B-0002r7-OU; Fri, 03 Apr 2020 19:30:17 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKS15-0001wx-16
 for openwrt-devel@lists.openwrt.org; Fri, 03 Apr 2020 19:30:13 +0000
Received: from buildfff.adridolf.com ([188.192.136.31]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N4yuK-1jAVpa2MJ2-010x3D; Fri, 03 Apr 2020 21:30:06 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  3 Apr 2020 21:29:22 +0200
Message-Id: <20200403192922.44334-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:1/WKk3Sua7/j9rbQhx83Dl4Y55Ro10oWdnTADXwP1gUThCpN7U9
 w8DbB08qOHHPWHZYehz/A0uYs1gdrEWhcplFykUSoiCag1ZeY24li+HjKU1e710uU8yByHO
 B5LEmUyq06SSyGYdXRQpWRYdy/hAKRhG4rVqEnIacaQvGGTB5i5UMYzAfEKBgStC8QzoVaG
 AzQfxUQ2BXI3NhSZipi8Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:P//6n2j9cIs=:pWBddzoUl4D2D4Yij4rrep
 CJHxEjm/Y5wvlomnRhLhC9niehQM0CwZdDI0woj2L6bwuPys1T98iYGDL3MHWJ2sYtS2Z3t3C
 M7jrvDqz7C/HQtIZDpw2PHMrol/oVcegY162fVGM38cKZaw7S3CmunKCmSVY51ZXkozPwym0F
 CdvizlX2a9HdtWklfZrg3V1IK6EqUqQzw6zCrURLmOkcSXoEEjsv5Mi8vfEC1SZbhm6Qzajqd
 IuBWydIRC0xnrMw+tgMycoKWUKkYCqVfqeynsAxqAvakuRk59LQqrUnjvY9MPbU9eu1MLdCdQ
 DF8z1XT24NiW1doCcy1QgmVA8taOBLoIILHBEdDTbl1fRYOd4wtC18uS0R/wX9AoDZy7xYLJN
 QBlIZQE47hzAWhpHs+Q3BjvIbJSohPPKa4o/0PXODVgyK/F+jsZ4bfpotMACdJecozYTQdr2X
 keskC4/MPqULh95ISDjTeb/Y3s1Zv24LKHimzZX+c3rJD20/5qFPVA3BNVvIHbVTCCc9zT5TA
 xh7JuazUpmsruCYyQOvJA1mJH4ruLl5AHdjr6BbRXPb0dAt7yWzXrFS9VgmD1LeBqcCeuSPD1
 2TXPHhno3i910AAr/csD3ytkFwJ905eDWhlQYhp9f3OAuakNqP94kp0dAmF0mjL8SasS5dHDP
 nnq/vkjlzqoBoH7cpdl9sICpeqjaS3t8FSUnAD7a7yaJhi2BAi11p/6hkp8SFtFPam3ZQnvLC
 Cn/yg/KxkjGcD8oMcNbyCz9hkhVdYAbVdR6fcgvr6mJZ9ITRwgRbRj7mc1Fksb7iK5WxeyP8e
 pPti5QEF/E/9Uz9K1/4sz9fod6NBLCxn/1TZaQ0yLOG053j1DsnXXlf/GinZfq3yAfDrL29
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_123011_367205_4762D202 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] bcm53xx: tidy up board.d/02_network even
 further
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
Cc: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhpcyBhcnJhbmdlcyB0aGUgY29kZSBpbiAwMl9uZXR3b3JrIHRvIHJlc2VtYmxlIHRoZSBzdHJ1
Y3R1cmUgdXNpbmcKbGFuX21hY2FkZHIgYW5kIHdhbl9tYWNhZGRyIHZhcmlhYmxlcyBsaWtlIGlu
IG90aGVyIHRhcmdldHMgYXMgY2xvc2UKYXMgcG9zc2libGUgKHdpdGhvdXQgYmVjb21pbmcgbm9u
LWNvc21ldGljKS4KClNpZ25lZC1vZmYtYnk6IEFkcmlhbiBTY2htdXR6bGVyIDxmcmVpZnVua0Bh
ZHJpYW5zY2htdXR6bGVyLmRlPgpDYzogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBs
PgotLS0KIC4uLi9iY201M3h4L2Jhc2UtZmlsZXMvZXRjL2JvYXJkLmQvMDJfbmV0d29yayB8IDI3
ICsrKysrKysrLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAx
NiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvYmNtNTN4eC9iYXNlLWZp
bGVzL2V0Yy9ib2FyZC5kLzAyX25ldHdvcmsgYi90YXJnZXQvbGludXgvYmNtNTN4eC9iYXNlLWZp
bGVzL2V0Yy9ib2FyZC5kLzAyX25ldHdvcmsKaW5kZXggZjg2ZjEyNDA3Zi4uODQ5MmVjMzI3NyAx
MDA3NTUKLS0tIGEvdGFyZ2V0L2xpbnV4L2JjbTUzeHgvYmFzZS1maWxlcy9ldGMvYm9hcmQuZC8w
Ml9uZXR3b3JrCisrKyBiL3RhcmdldC9saW51eC9iY201M3h4L2Jhc2UtZmlsZXMvZXRjL2JvYXJk
LmQvMDJfbmV0d29yawpAQCAtNzEsMzcgKzcxLDMyIEBAIGJjbTUzeHhfc2V0dXBfaW50ZXJmYWNl
cygpCiBiY201M3h4X3NldHVwX21hY3MoKQogewogCWxvY2FsIGJvYXJkPSIkMSIKKwlsb2NhbCBs
YW5fbWFjYWRkcgorCWxvY2FsIHdhbl9tYWNhZGRyPSIkKG52cmFtIGdldCB3YW5faHdhZGRyKSIK
Kwlsb2NhbCBldFhfbWFjYWRkcgogCi0JY2FzZSAiJGJvYXJkIiBpbgotCWRsaW5rLGRpci04ODVs
IHwgXAotCW5ldGdlYXIscjc5MDAgfCBcCi0JbmV0Z2VhcixyODAwMCB8IFwKLQluZXRnZWFyLHI4
NTAwKQotCQkjIEFzIHZlbmRvciBkb2Vzbid0IHVzZSBldGgwIGl0cyBNQUMgbWF5IGJlIG1pc3Np
bmcuIFVzZSBvbmUgZnJvbSBldGgyLgotCQlldDJtYWNhZGRyPSIkKG52cmFtIGdldCBldDJtYWNh
ZGRyKSIKLQkJWyAtbiAiJGV0Mm1hY2FkZHIiIF0gJiYgdWNpZGVmX3NldF9pbnRlcmZhY2VfbWFj
YWRkciAibGFuIiAiJGV0Mm1hY2FkZHIiCi0JCTs7Ci0JZXNhYwotCi0Jd2FuX21hY2FkZHI9IiQo
bnZyYW0gZ2V0IHdhbl9od2FkZHIpIgogCWNhc2UgIiRib2FyZCIgaW4KIAlhc3VzLHJ0LWFjODd1
KQotCQlldFhtYWNhZGRyPSQobnZyYW0gZ2V0IGV0MW1hY2FkZHIpCisJCWV0WF9tYWNhZGRyPSQo
bnZyYW0gZ2V0IGV0MW1hY2FkZHIpCiAJCTs7CiAJZGxpbmssZGlyLTg4NWwgfCBcCiAJbmV0Z2Vh
cixyNzkwMCB8IFwKIAluZXRnZWFyLHI4MDAwIHwgXAogCW5ldGdlYXIscjg1MDApCi0JCWV0WG1h
Y2FkZHI9JChudnJhbSBnZXQgZXQybWFjYWRkcikKKwkJIyBBcyB2ZW5kb3IgZG9lc24ndCB1c2Ug
ZXRoMCBpdHMgTUFDIG1heSBiZSBtaXNzaW5nLiBVc2Ugb25lIGZyb20gZXRoMi4KKwkJbGFuX21h
Y2FkZHI9JChudnJhbSBnZXQgZXQybWFjYWRkcikKKwkJZXRYX21hY2FkZHI9JChudnJhbSBnZXQg
ZXQybWFjYWRkcikKIAkJOzsKIAkqKQotCQlldFhtYWNhZGRyPSQobnZyYW0gZ2V0IGV0MG1hY2Fk
ZHIpCisJCWV0WF9tYWNhZGRyPSQobnZyYW0gZ2V0IGV0MG1hY2FkZHIpCiAJCTs7CiAJZXNhYwog
CiAJIyBJZiBXQU4gTUFDIGlzbid0IGV4cGxpY2l0bHkgc2V0LCBjYWxjdWxhdGUgaXQgdXNpbmcg
YmFzZSBNQUMgYXMgcmVmZXJlbmNlLgotCVsgLXogIiR3YW5fbWFjYWRkciIgLWEgLW4gIiRldFht
YWNhZGRyIiBdICYmIHdhbl9tYWNhZGRyPSQobWFjYWRkcl9hZGQgIiRldFhtYWNhZGRyIiAxKQor
CSMgSG93ZXZlciwgYmVzdCB0aGluZ3Mgd291bGQgYmUgdG8gc2V0IHRoZSBwcm9wZXIgd2FuX21h
Y2FkZHIgZGlyZWN0bHkgYWJvdmUKKwlbIC16ICIkd2FuX21hY2FkZHIiIC1hIC1uICIkZXRYX21h
Y2FkZHIiIF0gJiYgd2FuX21hY2FkZHI9JChtYWNhZGRyX2FkZCAiJGV0WF9tYWNhZGRyIiAxKQog
CisJWyAtbiAiJGxhbl9tYWNhZGRyIiBdICYmIHVjaWRlZl9zZXRfaW50ZXJmYWNlX21hY2FkZHIg
ImxhbiIgIiRsYW5fbWFjYWRkciIKIAlbIC1uICIkd2FuX21hY2FkZHIiIF0gJiYgdWNpZGVmX3Nl
dF9pbnRlcmZhY2VfbWFjYWRkciAid2FuIiAiJHdhbl9tYWNhZGRyIgogfQogCi0tIAoyLjIwLjEK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6CDD1D6BB8
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 May 2020 20:29:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mumpSgy0SByqltxmgm9cNY5gbcE7OwU1NZNGwHjudN0=; b=R60jwzXe/SVMtv
	KG85JxFHGTxYVyJJRe9HR7cApYO5Z3Q95BCwz4htvZm8AtQCeArHHoMiL1397Z1G1+fg4gl21JiI9
	XnZBFOBO8gE0Kz8i6urwqMZUcZz+vf3aCSwuzJHxDOu+79mwdG9MqT+Tc9J1CIaEbiFsWJHtaA2g2
	VsVLLQtgYGvkFfm5/YLHXe75IGl98Ox6myQRe4ui+yvehQtfSaKExjrjLq+/jXFpj5TChAJef8jer
	03Gk91VyKTkhqdLfpm5iwunAHEUnyRk+Jvx3P050a2IIA4zmZsGpd3cxjQJWwxPlxNQD/6bQ7aTCR
	SvO65dcaicWs3XxsKX5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaO2Q-0006Z0-Oo; Sun, 17 May 2020 18:29:26 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaO2I-0006NX-6H
 for openwrt-devel@lists.openwrt.org; Sun, 17 May 2020 18:29:20 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id 975D960050;
 Sun, 17 May 2020 20:28:59 +0200 (CEST)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org 975D960050
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 975D960050
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1589740140; bh=ikjs84jZg0tqi117a8AUxQA5p7DZkl7wQziz4zjp7Gs=;
 h=From:To:Cc:Subject:Date:From;
 b=UIJQWyEGmSuKk0aC7d38WYO0De8FRY/vEAO1dG4AcA345eirFQZ9orJXpWFZP0hkj
 hI0Aas6Q6R6aFLH41YztTHa+c1fPZqhZvhHQFfthKqOCyecWhu73dRDtHr/f04dg9M
 nSHvezSgT7PrppQYbGZVfxJPE6a35xEPQUyn4j60=
Received: by supercopter (sSMTP sendmail emulation);
 Sun, 17 May 2020 20:28:59 +0200
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 17 May 2020 20:28:51 +0200
Message-Id: <20200517182851.33553-1-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NO_DNS_FOR_FROM,TXREP,
 UNPARSEABLE_RELAY shortcircuit=no autolearn=no autolearn_force=no
 version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_112918_540942_6621A6ED 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] package/base-files: caldata: work around
 dd's limitation
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

dGw7ZHI6IGRkIHdpbGwgc2lsZW50bHkgdHJ1bmNhdGUgdGhlIG91dHB1dCBpZiByZWFkaW5nIGZy
b20gc3BlY2lhbApmaWxlcyAoZS5nLiBzeXNmcyBhdHRyaWJ1dGVzKSB3aXRoIGEgdG9vIGxhcmdl
IGJzIHBhcmFtZXRlci4KClRoaXMgcHJvYmxlbSB3YXMgZXhwb3NlZCBvbiBzb21lIFJvdXRlckJP
QVJEIGlwcTQweHggZGV2aWNlcyB3aGljaCB1c2UgYQpjYWxkYXRhIHBheWxvYWQgd2hpY2ggaXMg
bGFyZ2VyIHRoYW4gUEFHRV9TSVpFLCBjb250cmFyeSB0byBhbGwgb3RoZXIKY3VycmVudGx5IHN1
cHBvcnRlZCBSb3V0ZXJCT0FSRCBkZXZpY2VzOiB0aGUgY2FsZGF0YSB3b3VsZCBmYWlsIHRvCnBy
b3Blcmx5IGxvYWQgd2l0aCB0aGUgY3VycmVudCBzY3JpcHRzLgoKQmFja2dyb3VuZDogZGQgZG9l
c24ndCBzZWVtIHRvIGNvcnJlY3RseSBoYW5kbGUgcmVhZCgpIHJlc3VsdHMgdGhhdApyZXR1cm4g
bGVzcyB0aGFuIHJlcXVlc3RlZCBkYXRhLiBzeXNmcyBhdHRyaWJ1dGVzIGhhdmUgYSBrZXJuZWwg
ZXhjaGFuZ2UKYnVmZmVyIHdoaWNoIGlzIGF0IG1vc3QgUEFHRV9TSVpFIGJpZywgc28gb25seSAx
IHBhZ2UgY2FuIGJlIHJlYWQoKSBhdCBhCnRpbWUuIEluIHRoaXMgY2FzZSwgaWYgYnMgaXMgbGFy
Z2VyIHRoYW4gUEFHRV9TSVpFLCBkZCB3aWxsIHNpbGVudGx5CnRydW5jYXRlIGJsb2NrcyB0byBQ
QUdFX1NJWkUuIFdpdGggdGhlIGN1cnJlbnQgc2NyaXB0cyB1c2luZyBicz08c2l6ZT4KY291bnQ9
MSwgdGhlIGRhdGEgaXMgdHJ1bmNhdGVkIHRvIFBBR0VfU0laRSBhcyBzb29uIGFzIHRoZSByZXF1
ZXN0ZWQKPHNpemU+IGV4Y2VlZHMgdGhpcyB2YWx1ZS4KClRoaXMgY29tbWl0IHdvcmtzIGFyb3Vu
ZCB0aGlzIHByb2JsZW0gYnkgdXNpbmcgYGNhdGAgaW4gdGhlIGNhbGRhdGEKcm91dGluZXMgdGhh
dCBjYW4gcmVhZCBmcm9tIGEgZmlsZSAocm91dGluZXMgdGhhdCByZWFkIGZyb20gbXRkIGRldmlj
ZXMKYXJlIHVudG91Y2hlZCkuIGNhdCBjb3JyZWN0bHkgaGFuZGxlcyBwYXJ0aWFsIHJlYWQgcmVx
dWVzdHMuIFRoZSBvdXRwdXQKaXMgdGhlbiBwaXBlZCB0byBkZCB3aXRoIHRoZSBzYW1lIHBhcmFt
ZXRlcnMgYXMgYmVmb3JlLCB0byBlbnN1cmUgdGhhdAp0aGUgcmVzdWx0aW5nIGZpbGUgcmVtYWlu
cyBleGFjdGx5IHRoZSBzYW1lLgoKVGhpcyBpcyBhIHNpbXBsZSB3b3JrYXJvdW5kLCB0aGUgZG93
bnNpZGUgaXMgdGhhdCBpdCB1c2VzIGEgcGlwZSBhbmQgb25lCm1vcmUgZXhlY3V0YWJsZSwgYW5k
IHRoZXJlZm9yZSBoYXMgYSBsYXJnZXIgbWVtb3J5IGZvb3RwcmludCBhbmQgaXMKc2xvd2VyLiBU
aGlzIGlzIGRlZW1lZCBhY2NlcHRhYmxlIGNvbnNpZGVyaW5nIHRoZXNlIHJvdXRpbmVzIGFyZSBv
bmx5CnVzZWQgYXQgYm9vdCB0aW1lLgoKVGVzdGVkLWJ5OiBSb2JlcnQgTWFya28gPHJvYmltYXJr
b0BnbWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IFRoaWJhdXQgVkFSw4hORSA8aGFja3NAc2xhc2hk
aXJ0Lm9yZz4KLS0tCiBwYWNrYWdlL2Jhc2UtZmlsZXMvTWFrZWZpbGUgICAgICAgICAgICAgICAg
ICAgICAgIHwgMiArLQogcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL2xpYi9mdW5jdGlvbnMvY2Fs
ZGF0YS5zaCB8IDYgKysrLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9wYWNrYWdlL2Jhc2UtZmlsZXMvTWFrZWZpbGUgYi9w
YWNrYWdlL2Jhc2UtZmlsZXMvTWFrZWZpbGUKaW5kZXggZDhlN2MzMTg3OC4uNWZiMjc1NTMzZCAx
MDA2NDQKLS0tIGEvcGFja2FnZS9iYXNlLWZpbGVzL01ha2VmaWxlCisrKyBiL3BhY2thZ2UvYmFz
ZS1maWxlcy9NYWtlZmlsZQpAQCAtMTIsNyArMTIsNyBAQCBpbmNsdWRlICQoSU5DTFVERV9ESVIp
L3ZlcnNpb24ubWsKIGluY2x1ZGUgJChJTkNMVURFX0RJUikvZmVlZHMubWsKIAogUEtHX05BTUU6
PWJhc2UtZmlsZXMKLVBLR19SRUxFQVNFOj0yMjAKK1BLR19SRUxFQVNFOj0yMjEKIFBLR19GTEFH
Uzo9bm9uc2hhcmVkCiAKIFBLR19GSUxFX0RFUEVORFM6PSQoUExBVEZPUk1fRElSKS8gJChHRU5F
UklDX1BMQVRGT1JNX0RJUikvYmFzZS1maWxlcy8KZGlmZiAtLWdpdCBhL3BhY2thZ2UvYmFzZS1m
aWxlcy9maWxlcy9saWIvZnVuY3Rpb25zL2NhbGRhdGEuc2ggYi9wYWNrYWdlL2Jhc2UtZmlsZXMv
ZmlsZXMvbGliL2Z1bmN0aW9ucy9jYWxkYXRhLnNoCmluZGV4IDY4NjJkYTcxNjQuLjhiMDMxZTI5
Y2QgMTAwNjQ0Ci0tLSBhL3BhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9saWIvZnVuY3Rpb25zL2Nh
bGRhdGEuc2gKKysrIGIvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL2xpYi9mdW5jdGlvbnMvY2Fs
ZGF0YS5zaApAQCAtNjQsNyArNjQsNyBAQCBjYWxkYXRhX2Zyb21fZmlsZSgpIHsKIAogCVsgLW4g
IiR0YXJnZXQiIF0gfHwgdGFyZ2V0PS9saWIvZmlybXdhcmUvJEZJUk1XQVJFCiAKLQlkZCBpZj0k
c291cmNlIG9mPSR0YXJnZXQgaWZsYWc9c2tpcF9ieXRlcyBicz0kY291bnQgc2tpcD0kb2Zmc2V0
IGNvdW50PTEgMj4vZGV2L251bGwgfHwgXAorCWNhdCAkc291cmNlIHwgZGQgb2Y9JHRhcmdldCBp
ZmxhZz1za2lwX2J5dGVzIGJzPSRjb3VudCBza2lwPSRvZmZzZXQgY291bnQ9MSAyPi9kZXYvbnVs
bCB8fCBcCiAJCWNhbGRhdGFfZGllICJmYWlsZWQgdG8gZXh0cmFjdCBjYWxpYnJhdGlvbiBkYXRh
IGZyb20gJHNvdXJjZSIKIH0KIApAQCAtNzQsMTIgKzc0LDEyIEBAIGNhbGRhdGFfc3lzZnNsb2Fk
X2Zyb21fZmlsZSgpIHsKIAlsb2NhbCBjb3VudD0kKCgkMykpCiAKIAkjIHRlc3QgZXh0cmFjdCB0
byAvZGV2L251bGwgZmlyc3QKLQlkZCBpZj0kc291cmNlIG9mPS9kZXYvbnVsbCBpZmxhZz1za2lw
X2J5dGVzIGJzPSRjb3VudCBza2lwPSRvZmZzZXQgY291bnQ9MSAyPi9kZXYvbnVsbCB8fCBcCisJ
Y2F0ICRzb3VyY2UgfCBkZCBvZj0vZGV2L251bGwgaWZsYWc9c2tpcF9ieXRlcyBicz0kY291bnQg
c2tpcD0kb2Zmc2V0IGNvdW50PTEgMj4vZGV2L251bGwgfHwgXAogCQljYWxkYXRhX2RpZSAiZmFp
bGVkIHRvIGV4dHJhY3QgY2FsaWJyYXRpb24gZGF0YSBmcm9tICRzb3VyY2UiCiAKIAkjIGNhbid0
IGZhaWwgbm93CiAJZWNobyAxID4gL3N5cy8kREVWUEFUSC9sb2FkaW5nCi0JZGQgaWY9JHNvdXJj
ZSBvZj0vc3lzLyRERVZQQVRIL2RhdGEgaWZsYWc9c2tpcF9ieXRlcyBicz0kY291bnQgc2tpcD0k
b2Zmc2V0IGNvdW50PTEgMj4vZGV2L251bGwKKwljYXQgJHNvdXJjZSB8IGRkIG9mPS9zeXMvJERF
VlBBVEgvZGF0YSBpZmxhZz1za2lwX2J5dGVzIGJzPSRjb3VudCBza2lwPSRvZmZzZXQgY291bnQ9
MSAyPi9kZXYvbnVsbAogCWVjaG8gMCA+IC9zeXMvJERFVlBBVEgvbG9hZGluZwogfQogCi0tIAoy
LjExLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVs
Cg==

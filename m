Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7601B1D6C80
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 May 2020 21:46:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j9qxyyeVJ9qNdce9I6k76sxbvUEHNSMirwvvl+hkeog=; b=hc6biKt2aLuqAi
	ij2Gul4ta1qObHYTeVlnP2IOswij6xPDzAerB/GFzcfBLxAJJIOYjw38OO0xHNxlS2TGytIciXFVk
	jqDSJmIGI2kkZHy9ZA5e3xVVdUwzvVq1qHNMs+I59FAzL3/LfF9aHwmWU1ps6FL3N1elVnYybqGeo
	In5VuVyAc8oYIyzt5zLhX+mssAM5geDabxwEUF0ogwGzPufGaoQuJgAPnhPyE6ZTGCXICrsM8S/Aa
	+JhjbJXvxlY+8+Mz+ovaVZnYWgYGBHOyrQHSboxl2yll6wS9a/iXhNenr6L9uBrErOHBexk6iKhrg
	g2a4fwYEcAX7RaTID2pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaPF9-00019O-D7; Sun, 17 May 2020 19:46:39 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaPF2-00018u-DU
 for openwrt-devel@lists.openwrt.org; Sun, 17 May 2020 19:46:34 +0000
Received: from supercopter (82-64-212-153.subs.proxad.net [82.64.212.153])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPS id 6E1F5600A8;
 Sun, 17 May 2020 21:46:26 +0200 (CEST)
DMARC-Filter: OpenDMARC Filter v1.3.2 vps.slashdirt.org 6E1F5600A8
Authentication-Results: vps.slashdirt.org; dmarc=fail (p=quarantine dis=none)
 header.from=slashdirt.org
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 6E1F5600A8
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1589744787; bh=16bOLaFzsL+NulB1dYzP+imKj6BWLNZXemoqL+KrSKs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=p7G1CBeeDh4Rj3DJQZyygqyYaFxx214FEIQygBmYk/J+cZVDAK3A0Po4/dKGUTBYf
 0pjCAd8EGbIeASz+0I9n6jPxZhLOfqtRkg+JTZqOg5gLiF36Ngk3N6aMvyQH/iTKJY
 u0HuGbsURX3YaKLCZ5O81/vDHLGa2GG2NmqS/wy0=
Received: by supercopter (sSMTP sendmail emulation);
 Sun, 17 May 2020 21:46:26 +0200
From: =?UTF-8?q?Thibaut=20VAR=C3=88NE?= <hacks@slashdirt.org>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 17 May 2020 21:46:09 +0200
Message-Id: <20200517194609.34294-1-hacks@slashdirt.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200517182851.33553-1-hacks@slashdirt.org>
References: <20200517182851.33553-1-hacks@slashdirt.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NO_DNS_FOR_FROM,TXREP,
 UNPARSEABLE_RELAY shortcircuit=no autolearn=no autolearn_force=no
 version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on vps.slashdirt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_124632_617666_870C87DA 
X-CRM114-Status: GOOD (  14.81  )
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
Subject: [OpenWrt-Devel] [PATCH v2] package/base-files: caldata: work around
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
aXJ0Lm9yZz4KLS0tCnYyOiBsZWF2ZSBhIGNvbW1lbnQgaW4gc2NyaXB0cwotLS0KIHBhY2thZ2Uv
YmFzZS1maWxlcy9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgfCAyICstCiBwYWNrYWdl
L2Jhc2UtZmlsZXMvZmlsZXMvbGliL2Z1bmN0aW9ucy9jYWxkYXRhLnNoIHwgOCArKysrKy0tLQog
MiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvcGFja2FnZS9iYXNlLWZpbGVzL01ha2VmaWxlIGIvcGFja2FnZS9iYXNlLWZpbGVzL01h
a2VmaWxlCmluZGV4IGQ4ZTdjMzE4NzguLjVmYjI3NTUzM2QgMTAwNjQ0Ci0tLSBhL3BhY2thZ2Uv
YmFzZS1maWxlcy9NYWtlZmlsZQorKysgYi9wYWNrYWdlL2Jhc2UtZmlsZXMvTWFrZWZpbGUKQEAg
LTEyLDcgKzEyLDcgQEAgaW5jbHVkZSAkKElOQ0xVREVfRElSKS92ZXJzaW9uLm1rCiBpbmNsdWRl
ICQoSU5DTFVERV9ESVIpL2ZlZWRzLm1rCiAKIFBLR19OQU1FOj1iYXNlLWZpbGVzCi1QS0dfUkVM
RUFTRTo9MjIwCitQS0dfUkVMRUFTRTo9MjIxCiBQS0dfRkxBR1M6PW5vbnNoYXJlZAogCiBQS0df
RklMRV9ERVBFTkRTOj0kKFBMQVRGT1JNX0RJUikvICQoR0VORVJJQ19QTEFURk9STV9ESVIpL2Jh
c2UtZmlsZXMvCmRpZmYgLS1naXQgYS9wYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvbGliL2Z1bmN0
aW9ucy9jYWxkYXRhLnNoIGIvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL2xpYi9mdW5jdGlvbnMv
Y2FsZGF0YS5zaAppbmRleCA2ODYyZGE3MTY0Li5lMjJjN2QyN2U2IDEwMDY0NAotLS0gYS9wYWNr
YWdlL2Jhc2UtZmlsZXMvZmlsZXMvbGliL2Z1bmN0aW9ucy9jYWxkYXRhLnNoCisrKyBiL3BhY2th
Z2UvYmFzZS1maWxlcy9maWxlcy9saWIvZnVuY3Rpb25zL2NhbGRhdGEuc2gKQEAgLTY0LDcgKzY0
LDggQEAgY2FsZGF0YV9mcm9tX2ZpbGUoKSB7CiAKIAlbIC1uICIkdGFyZ2V0IiBdIHx8IHRhcmdl
dD0vbGliL2Zpcm13YXJlLyRGSVJNV0FSRQogCi0JZGQgaWY9JHNvdXJjZSBvZj0kdGFyZ2V0IGlm
bGFnPXNraXBfYnl0ZXMgYnM9JGNvdW50IHNraXA9JG9mZnNldCBjb3VudD0xIDI+L2Rldi9udWxs
IHx8IFwKKwkjIGRkIGRvZXNuJ3QgaGFuZGxlIHBhcnRpYWwgcmVhZHMgZnJvbSBzcGVjaWFsIGZp
bGVzOiB1c2UgY2F0CisJY2F0ICRzb3VyY2UgfCBkZCBvZj0kdGFyZ2V0IGlmbGFnPXNraXBfYnl0
ZXMgYnM9JGNvdW50IHNraXA9JG9mZnNldCBjb3VudD0xIDI+L2Rldi9udWxsIHx8IFwKIAkJY2Fs
ZGF0YV9kaWUgImZhaWxlZCB0byBleHRyYWN0IGNhbGlicmF0aW9uIGRhdGEgZnJvbSAkc291cmNl
IgogfQogCkBAIC03MywxMyArNzQsMTQgQEAgY2FsZGF0YV9zeXNmc2xvYWRfZnJvbV9maWxlKCkg
ewogCWxvY2FsIG9mZnNldD0kKCgkMikpCiAJbG9jYWwgY291bnQ9JCgoJDMpKQogCisJIyBkZCBk
b2Vzbid0IGhhbmRsZSBwYXJ0aWFsIHJlYWRzIGZyb20gc3BlY2lhbCBmaWxlczogdXNlIGNhdAog
CSMgdGVzdCBleHRyYWN0IHRvIC9kZXYvbnVsbCBmaXJzdAotCWRkIGlmPSRzb3VyY2Ugb2Y9L2Rl
di9udWxsIGlmbGFnPXNraXBfYnl0ZXMgYnM9JGNvdW50IHNraXA9JG9mZnNldCBjb3VudD0xIDI+
L2Rldi9udWxsIHx8IFwKKwljYXQgJHNvdXJjZSB8IGRkIG9mPS9kZXYvbnVsbCBpZmxhZz1za2lw
X2J5dGVzIGJzPSRjb3VudCBza2lwPSRvZmZzZXQgY291bnQ9MSAyPi9kZXYvbnVsbCB8fCBcCiAJ
CWNhbGRhdGFfZGllICJmYWlsZWQgdG8gZXh0cmFjdCBjYWxpYnJhdGlvbiBkYXRhIGZyb20gJHNv
dXJjZSIKIAogCSMgY2FuJ3QgZmFpbCBub3cKIAllY2hvIDEgPiAvc3lzLyRERVZQQVRIL2xvYWRp
bmcKLQlkZCBpZj0kc291cmNlIG9mPS9zeXMvJERFVlBBVEgvZGF0YSBpZmxhZz1za2lwX2J5dGVz
IGJzPSRjb3VudCBza2lwPSRvZmZzZXQgY291bnQ9MSAyPi9kZXYvbnVsbAorCWNhdCAkc291cmNl
IHwgZGQgb2Y9L3N5cy8kREVWUEFUSC9kYXRhIGlmbGFnPXNraXBfYnl0ZXMgYnM9JGNvdW50IHNr
aXA9JG9mZnNldCBjb3VudD0xIDI+L2Rldi9udWxsCiAJZWNobyAwID4gL3N5cy8kREVWUEFUSC9s
b2FkaW5nCiB9CiAKLS0gCjIuMTEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxA
bGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL29wZW53cnQtZGV2ZWwK

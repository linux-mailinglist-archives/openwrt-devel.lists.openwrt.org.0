Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4F723D00
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 May 2019 18:14:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gsk/LWDYSUFQHPtJkhXwK+S4iFzZk8w8CkqcmE8xuAs=; b=e1YwyKsWkQwX82
	Q6T5Nd0rtReVwuF7rYBPBNVC/ufYRyhxE5EiXgy79yfz4+bPP0Hc+CDMI0q1vftcU65GAw3IjoUcx
	TiYLARWWpGMWZfwlOk9XS0DCHrTJPG76/CJR0I6J+v6aV8W1hZq4NIKvYIs58iwkFywofFccIBRWD
	I9VgXDSteMTlX59gM46y6TmrSnm6XUsPUbFQ/M5qSmrsX4RBka6CgkJNRqbksHGUJz1ctdFKsyZZr
	tCQRhDz/18XPRVZwKXQGXwfai4HnWL8Tm6SZv27/vY34wgBvV1q1xA9KHtI/VDT3aJ4l6wD1kBTkt
	+khao2tqFSYzf6K6YAVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSkw2-0005Hj-QW; Mon, 20 May 2019 16:14:46 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSkvB-0004A4-K5
 for openwrt-devel@lists.openwrt.org; Mon, 20 May 2019 16:13:55 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 1F4D94B34;
 Mon, 20 May 2019 18:13:50 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id d1fe507f;
 Mon, 20 May 2019 18:13:49 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 20 May 2019 18:13:25 +0200
Message-Id: <1558368805-19484-6-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558368805-19484-1-git-send-email-ynezz@true.cz>
References: <1558368805-19484-1-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_091353_900664_A6CB29B6 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH RFC 5/5] ath79: make urngd default RNG seed
 source
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Stephan Mueller <smueller@chronox.de>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Dustin Lundquist <d.lundquist@temperednetworks.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhpcyBmaXhlcyBzb21lIG9mIHRoZSBjdXJyZW50IHVyYW5kb20tc2VlZCBiYXNlZCBmbGF3cy4K
CkZpcnN0LCBzaW1wbHkgd3JpdGluZyB0byAvZGV2L3VyYW5kb20gZG9lcyBub3QgaW5jcmVhc2Ug
dGhlIGtlcm5lbCdzCmVudHJvcHkgY291bnQsIHRoaXMgY2FzdXNlcyBwcm9jZXNzZXMgb2J0YWlu
aW5nIHJhbmRvbW5lc3MgdG8gYmxvY2suClBhcnRpY3VsYXJseSBwcm9jZXNzZXMgdXNpbmcgT3Bl
blNTTCdzIFJBTkRfYnl0ZXMoKSB3aWxsIGJsb2NrIHVudGlsIHRoZQprZXJuZWwgZW1pdHMgJ3Jh
bmRvbTogY3JuZyBpbml0IGRvbmUnLiBUaGlzIGNhbiB0YWtlIHVwd2FyZHMgb2YgdHdlbnR5Cm1p
bnV0ZXMuCgpBY2NvcmRpbmcgdG8gcmFuZG9tKDQpIHRoZSBlbnRyb3B5IGNvdW50IGlzIG9ubHkg
aW5jcmVhc2VkIHdoZW4gdXNpbmcKdGhlIFJOREFEREVOVFJPUFkgaW9jdGwuCgpTZWNvbmQsIHVy
YW5kb20tc2VlZCBpcyB1c2luZyAvZXRjL3VyYW5kb20uc2VlZCBmaWxlIHRvIHNlZWQgdGhlCmtl
cm5lbCdzIFJORyBtYWNoaW5lcnkgdXBvbiBldmVyeSBib290LiBUaGlzIGZpbGUgaXMgY3JlYXRl
ZCBvbmx5IG9uY2UKZHVyaW5nIGZpcnN0LWJvb3QgYW5kIHRoZW4gcmV1c2VkIG9uIGV2ZXJ5IGNv
bnNlY3V0aXZlIGJvb3QsIHNvIHByZXR0eQptdWNoIHN0YXRpYy4KClNvIHRoaXMgcGF0Y2ggcmVt
b3ZlcyB1cmFuZG9tLXNlZWQgcGFja2FnZSBpbiBmYXZvciBvZiB1cm5nZCwgd2hpY2ggaXMKbWlj
cm8gbm9uLXBoeXNpY2FsIHRydWUgcmFuZG9tIG51bWJlciBnZW5lcmF0b3IgYmFzZWQgb24gdGlt
aW5nIGppdHRlci4KClVzaW5nIHRoZSBKaXR0ZXIgUk5HIGNvcmUsIHRoZSB1cm5nZCBwcm92aWRl
cyBhbiBlbnRyb3B5IHNvdXJjZSB0aGF0CmZlZWRzIGludG8gdGhlIExpbnV4IC9kZXYvcmFuZG9t
IGRldmljZSBpZiBpdHMgZW50cm9weSBydW5zIGxvdy4gSXQKdXBkYXRlcyB0aGUgL2Rldi9yYW5k
b20gZW50cm9weSBlc3RpbWF0b3Igc3VjaCB0aGF0IHRoZSBuZXdseSBwcm92aWRlZAplbnRyb3B5
IHVuYmxvY2tzIC9kZXYvcmFuZG9tLgoKVGhlIHNlZWRpbmcgb2YgL2Rldi9yYW5kb20gYWxzbyBl
bnN1cmVzIHRoYXQgL2Rldi91cmFuZG9tIGJlbmVmaXRzIGZyb20KZW50cm9weS4gRXNwZWNpYWxs
eSBkdXJpbmcgYm9vdCB0aW1lLCB3aGVuIHRoZSBlbnRyb3B5IG9mIExpbnV4IGlzIGxvdywKdGhl
IEppdHRlciBSTkdkIHByb3ZpZGVzIGEgc291cmNlIG9mIHN1ZmZpY2llbnQgZW50cm9weS4KClNv
bWUgUk5HIGluaXQgdGltZSBudW1iZXJzIGZyb20gcWNhOTU2MyAoVFAtTGluayBBcmNoZXIgQzcg
djUpOgoKIFsgICAxMi4wNDU2OTNdIHJhbmRvbTogY3JuZyBpbml0IGRvbmUgICAgICAgICh1cm5n
ZCkKIFsgIDEyMC4wNDMxMzJdIHJhbmRvbTogY3JuZyBpbml0IGRvbmUgICAgICAgICh1cmFuZG9t
LXNlZWQpCgpGbGFzaCBzcGFjZSBkZXRhaWxzOgoKIHVybmdkOiAgICAgICAgKyA0NTc5IGIKIGdl
dHJhbmRvbTogICAgLSAxNjM1IGIKIHVyYW5kb20tc2VlZDogLSAgODQxIGIKIC0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KIGRpZmYgICAgICAgICAgKyAyMTAzIGIKClJlZjogaHR0cHM6Ly9wYXRjaHdv
cmsub3psYWJzLm9yZy9wYXRjaC8xMDU2OTgxLwpSZWY6IGh0dHBzOi8vZ2l0aHViLmNvbS9vcGVu
d3J0L29wZW53cnQvcHVsbC8yMDY5I2lzc3VlLTI3OTk3NzQ0NQpTaWduZWQtb2ZmLWJ5OiBQZXRy
IMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgpTaWduZWQtb2ZmLWJ5OiBTdGVwaGFuIE11ZWxsZXIg
PHNtdWVsbGVyQGNocm9ub3guZGU+CltwYXJ0cyBvZiB0aGUgY29tbWl0IG1lc3NhZ2VdClNpZ25l
ZC1vZmYtYnk6IER1c3RpbiBMdW5kcXVpc3QgPGQubHVuZHF1aXN0QHRlbXBlcmVkbmV0d29ya3Mu
Y29tPgpbcGFydHMgb2YgdGhlIGNvbW1pdCBtZXNzYWdlXQoKLS0tCiB0YXJnZXQvbGludXgvYXRo
NzkvTWFrZWZpbGUgfCAzICsrLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9hdGg3OS9NYWtlZmlsZSBiL3Rh
cmdldC9saW51eC9hdGg3OS9NYWtlZmlsZQppbmRleCAwY2NjMGJlZDFjZTAuLjg0MGYzMGZiMTFi
ZSAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L2F0aDc5L01ha2VmaWxlCisrKyBiL3RhcmdldC9s
aW51eC9hdGg3OS9NYWtlZmlsZQpAQCAtMTMsOCArMTMsOSBAQCBLRVJORUxfVEVTVElOR19QQVRD
SFZFUiA6PSA0LjE5CiAKIGluY2x1ZGUgJChJTkNMVURFX0RJUikvdGFyZ2V0Lm1rCiAKK0RFRkFV
TFRfUEFDS0FHRVM6PSQoZmlsdGVyLW91dCB1cmFuZG9tLXNlZWQsJChERUZBVUxUX1BBQ0tBR0VT
KSkKIERFRkFVTFRfUEFDS0FHRVMgKz0gXAogCWttb2QtZ3Bpby1idXR0b24taG90cGx1ZyBzd2Nv
bmZpZyBcCi0Ja21vZC1hdGg5ayB1Ym9vdC1lbnZ0b29scworCWttb2QtYXRoOWsgdWJvb3QtZW52
dG9vbHMgdXJuZ2QKIAogJChldmFsICQoY2FsbCBCdWlsZFRhcmdldCkpCi0tIAoxLjkuMQoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2
ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9s
aXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C093D13B04
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 May 2019 17:48:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x8zUPx0wnxuMuG53FDZdZSBwrFn4cDs/A8YgHtK/amQ=; b=fOYsPbIbd2HQRI
	9GEroznVZZvT5R4c//oRvmF4haayPYMsBt2VMSzXbYhgoeoQYUuOGZc1xmTqqLe/QmaDxK5FYdGQB
	+FYiAi7gr2+NC6i0fWDx7OW2je2I0DF+EzMAOTzuzOHC2gJeLqA3wv1myquis3xcDLEtGOPfHjRhx
	/Zk/CiDf5vB/4mcBAhvM/4XAT78wQxCY2iRNGwIeCOllOhR9msJTinISehh0TungA++Xge/8/24vp
	z5eUHK95zccTT9a4wjfTdhynjxX3twWBh78XsS2oP75rJKExM3SMVHJduZq0hg7uuiigkFwBwcFEo
	C2t0z+hTZLNyDe6vGQ+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMwto-0002l5-Vl; Sat, 04 May 2019 15:48:28 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMwtg-0002kR-Uc
 for openwrt-devel@lists.openwrt.org; Sat, 04 May 2019 15:48:23 +0000
Received: from [192.168.0.207] (ip5f5ab4b1.dynamic.kabel-deutschland.de
 [95.90.180.177]) (Authenticated sender: mail@aparcar.org)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id F0F5B200003;
 Sat,  4 May 2019 15:48:03 +0000 (UTC)
To: openwrt-devel@lists.openwrt.org
From: Paul Spooren <mail@aparcar.org>
Openpgp: preference=signencrypt
Autocrypt: addr=mail@aparcar.org; keydata=
 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
Message-ID: <6358e0b2-f60f-a820-68e4-21513abeefa5@aparcar.org>
Date: Sat, 4 May 2019 17:48:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_084821_293313_438F463B 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] RFC: add metadata to buildroot
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
Cc: Jo-Philipp Wich <jow@openwrt.org>, Moritz Warning <moritzwarning@web.de>,
 Daniel Golle <daniel@makrotopia.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgYWxsLAoKZnJvbSBteSBwb2ludCBvZiB2aWV3IHRoZSBjdXJyZW50IE9wZW5XcnQgZGV2aWNl
IGRvY3VtZW50YXRpb24gbGFja3MKc29tZSB1bml0eSwgbWVhbmluZyB0aGUgdGFibGUgb2YgaGFy
ZHdhcmUgaXMgcGFydGx5IGluY29tcGxldGUgb3IKaW5jb25zaXN0ZW50LiBBbHNvIGRvY3VtZW50
YXRpb25zIGFyZSBvZnRlbiByZXdyaXR0ZW4gd2l0aCBkaWZmZXJlbnQKcHJlY2lzaW9uIGFuZCAi
dG9uZ3VlIi4KClRvIHVuaWZ5IHRoaW5ncyBJIGNyZWF0ZWQgYSAqUG9DKlswXSwgbW9zdGx5IGJh
c2VkIG9uIHRoZSBvZmZpY2lhbApMaW5lYWdlT1MgV2lraVsxXSwgYXMgdGhleSBoYXZlIGEgc2lt
aWxhciBzaXR1YXRpb24gcmVnYXJkaW5nIGRldmljZXMuCgpUaGUgaWRlYSBpcyB0byBkZWZpbmUg
dGVtcGxhdGVzIGRlc2NyaWJpbmcgY29tbW9uIGluZm9ybWF0aW9uIGFuZCBmaWxsCnRoZW0gd2l0
aCBkZXZpY2UgbWV0YWRhdGEuCgpUaGUgKlBvQyogYWJvdmUgaXMgYmFzZWQgb24gdGhlIGZvbGxv
d2luZyBtZXRhZGF0YSBoZXJlWzJdLiBNb3N0IHBhcnRzCm9mIHRoZSBtZXRhZGF0YSBhcmUgc2Ny
YXBlZCBmcm9tIHRoZSBjdXJyZW50IFRvSFszXSwgaG93ZXZlciBzb21lIHNtYWxsCnBpZWNlcyBh
cmUgYWRkZWQgYW5kIGxhdGVyIHJlbmRlcmVkIGluIHNvbWV0aGluZyB1c2VmdWw6CgrCoMKgwqAg
dGZ0cF9pbWFnZTogQXJjaGVyQzV2MV90cF9yZWNvdmVyeS5iaW4KwqDCoMKgIHRmdHBfaXA6IDE5
Mi4xNjguMC42NgoKUmVzdWx0IGluIGEgc21hbGwgdGV4dCB0byBleHBsYWluIGhvdyB0byB1c2Ug
dGhlIFRGVFAgcmVjb3ZlcnkuCgrCoMKgwqAgc3dpdGNoX3BvcnRzOgrCoCDCoMKgwqAgMDogRVRI
MQrCoCDCoMKgwqAgMTogV0FOCsKgIMKgwqDCoCAyOiBMQU4xCsKgIMKgwqDCoCAzOiBMQU4yCsKg
IMKgwqDCoCA0OiBMQU4zCsKgIMKgwqDCoCA1OiBMQU40CsKgwqDCoCDCoCA2OiBFVEgwCgpDcmVh
dGVzIGEgdGFibGUgd2l0aCB0aGUgc3dpdGNoIHBvcnQgbWVzc2luZy4KClNhbWUgY291bGQgYmUg
ZG9uZSB3aXRoIHRoZSBmbGFzaCBsYXlvdXQsIExFRHMsIGV0Yy4KCkFsbCB0aGVzZSBpbmZvcm1h
dGlvbiBhcmUgKGhvcGVmdWxseSkgYXZhaWxhYmxlIHRvIHRoZSBkZXZlbG9wZXIgYWRkaW5nCmEg
bmV3IGRldmljZSwgdGhlcmVmb3JlIGVhc3kgdG8gc3VwcGx5IHN1Y2ggYSBgeWFtbGAgbWV0YWRh
dGEgZmlsZSBhcwp3ZWxsLiBPZnRlbiB0aGVzZSBpbmZvcm1hdGlvbiBhcmUgKHJlLWZvcm11bGF0
ZWQpIGluIGNvbW1pdCBtZXNzYWdlcwphbnl3YXlbNF0uIE1lYW5pbmcsIHNvbWV3aGVyZSBpbiB0
aGUgYnVpbGRyb290IGNvdWxkIGJlIGEgc3RvcmUgb2YKYHlhbWxgIGZpbGVzLCB3aGljaCBjb3Vs
ZCBldmVuIGJlIHJldXNlZCBmb3IgYnVpbGRpbmcgaXRzZWxmLgoKQSBzZWNvbmQgcmVwb3NpdG9y
eSBsaWtlIG9wZW53cnQtZGV2aWNlLmdpdFs1XSBjb3VsZCBiZSBhZGRlZCB0byByZW5kZXIKdGhl
IHdpa2kgcGFnZXMgYW5kIG9yZ2FuaXplIHRoZSB0ZW1wbGF0ZXMuCgpJJ2QgYmUgaGFwcHkgdG8g
aGVhciB5b3VyIG9waW5pb25zLgoKQmVzdCwKUGF1bAoKUFM6IEknbSBhZnJhaWQgSSBkb24ndCBr
bm93IHRoZSBtYWlsIGFkZHJlc3Mgb2YgdG1vbWFzLi4uCgpbMF06Cmh0dHBzOi8vYXBhcmNhci5n
aXRodWIuaW8vb3BlbndydC1kZXZpY2VzL2RldmljZXMvdHAtbGlua19hcmNoZXJfYzVfYWMxMjAw
X3YxLwpbMV06IGh0dHA6Ly93aWtpLmxpbmVhZ2Vvcy5vcmcvZGV2aWNlcy8KWzJdOgpodHRwczov
L2dpdGh1Yi5jb20vYXBhcmNhci9vcGVud3J0LWRldmljZXMvYmxvYi9tYXN0ZXIvX2RhdGEvZGV2
aWNlcy90cC1saW5rX2FyY2hlcl9jNV9hYzEyMDBfdjEueW1sClszXTogaHR0cHM6Ly9vcGVud3J0
Lm9yZy90b2gvaHdkYXRhL3RwLWxpbmsvdHAtbGlua19hcmNoZXJfYzVfYWMxMjAwX3YxCls0XToK
aHR0cHM6Ly9naXQub3BlbndydC5vcmcvP3A9b3BlbndydC9vcGVud3J0LmdpdDthPWNvbW1pdDto
PTQzZThjMzdjYjRkYTY0YTEyYTNjYjg4YTg0YjE5ZGI3ZjJmYzY0MGMKWzVdOiBodHRwczovL2dp
dGh1Yi5jb20vYXBhcmNhci9vcGVud3J0LWRldmljZXMKCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3Bl
bndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21h
aWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=

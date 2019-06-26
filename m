Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFBD565B4
	for <lists+openwrt-devel@lfdr.de>; Wed, 26 Jun 2019 11:34:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	References:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5bKCi8PkKU5eu7gbfQoEEAQ0gtJan9GWCDj3NN7DH4Q=; b=fZM2TYHnkZfHx7n+QHVvgeK2l
	61VfQlcyUQSwec5b5p7ayonZWZs/64VkXVH9PkomuG8SVgvNCSm7Klx0SWznXZtPxDCiGoxBhIkjm
	ONbfbSxBcI6WR62J6vPLN6wMm919foGFqY725tukhlqf3m1+RwtZezxSuBDPa6vNOp9VdESmp7+pl
	TWDuN5IOxYhj6hwTwqZpyHmZIObGvDKK34GW872fjgjChECyhDUHiw//LjTyxGgvttN8y9pl8PhmK
	YmpQjWgYzeTuAhUAIvDAXbiaiChtnYnVA7gL9XMX42KbgVe8y53qITlwnrXPideNk1ISmo749yLOH
	I3PFGNp6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg4Ji-0000U4-Ad; Wed, 26 Jun 2019 09:34:14 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg4JO-0000TU-GN
 for openwrt-devel@lists.openwrt.org; Wed, 26 Jun 2019 09:33:56 +0000
Received: by mail-ed1-x542.google.com with SMTP id w20so2349238edd.2
 for <openwrt-devel@lists.openwrt.org>; Wed, 26 Jun 2019 02:33:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:from:to:references:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=mUQT9ZiHxxJkDucGBeUt6pMSP7AV4Y89/u6vXNolzw4=;
 b=xJd3EVw+Kqv4Ox6clGUS+cGCf6Vgg4YadOKLnZcZbWKzFCLnryH204XuxFWkZev6cG
 yiYtZuRPk+dl76wc0wKMpAH1ljSo/EcypfWMGBEY3mi33ViPiAT+9cG1hzpphf8yC9ib
 bnAF0nzrP4fuCCEcrTPA+vPagtNtlQbtX3mXhml8Y3tgxhvtjQtZKgqtxyAfNwWw8t7D
 k5aUYteba6V0CCHe3aWq6bJ2qrCia+X4JWnp+hXXfuv/97WAfEhcACfKJAkZcOMOAnXZ
 lMQ1z6XQOJ7P+QWUEdYLfvU+eHh9vTXa+A1HuBToS9X0dzzHhcPfcGGsXtdoeEPV65vx
 7wuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=mUQT9ZiHxxJkDucGBeUt6pMSP7AV4Y89/u6vXNolzw4=;
 b=eNIw75IWb6HfYF3fh8wm/BtiHByXD00b0Xl5LWlAG1jr10m0amwzH+no3B9SSkSIir
 W8MgxctVbAqYSQYbWuIpjiP1m5RdpkKHWNJeutBb66A74Uzspw5ffu9XduQG0584/bp/
 hznznL2lJJo1bra0yk0nWi2CYPZY5ROPoH62aTCZj0QvIDaNii0g+teKo5lv1rPayxZM
 za1lnpADuAzF1je3Qd6MAbgASzYvxZrWW0slqDK8OLaIdQnaGDS41J5LdX8mOu0n5Ot4
 HGY9UPwPnSfJIxWkIuzt3anKmDrz09A5HDuoJ/Vlp7yPmJ/ucsvaiv2q+uF/fJpCYQ+x
 arAA==
X-Gm-Message-State: APjAAAUmPEUEQaYu+8I0EnYwxaujP39Z0u7DsfsFe2+hQAKqU0LI5Z7P
 aKy1zqsjCbvr0uXAGepnX4Myo/74pfFloQ==
X-Google-Smtp-Source: APXvYqzDUb8DqB1+ZKjTZUfTq4mD4uNIlLqKgvDuKUv3QPh0PCrhQz8AkIeTtpZEOjXy1UZdGpDnXA==
X-Received: by 2002:a50:d1c6:: with SMTP id i6mr3932677edg.110.1561541632552; 
 Wed, 26 Jun 2019 02:33:52 -0700 (PDT)
Received: from [192.168.3.176] (d515300d8.static.telenet.be. [81.83.0.216])
 by smtp.gmail.com with ESMTPSA id q14sm2909673eju.47.2019.06.26.02.33.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 02:33:52 -0700 (PDT)
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
To: Ben Greear <greearb@candelatech.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <abe6feb7-80a9-4587-db0b-7f3a37a792d8@ncentric.com>
 <7a68db11-1026-e576-2c26-425ea85ef609@candelatech.com>
 <93bc6089-e313-f51f-06e9-4c0b8f36f7e7@ncentric.com>
 <3d95432a-db21-d4ef-24c4-fc3659fee0a1@candelatech.com>
 <4248b808-d8a5-1972-f423-ba34e222abc2@ncentric.com>
Message-ID: <2757cb92-e6a6-58db-e5a1-ca5eaff7855f@ncentric.com>
Date: Wed, 26 Jun 2019 11:33:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <4248b808-d8a5-1972-f423-ba34e222abc2@ncentric.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_023354_550207_178AE134 
X-CRM114-Status: GOOD (  20.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] ath10k-ct 4.19 and IBSS
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

Ck9uIDI2LjA2LjE5IDExOjAyLCBLb2VuIFZhbmRlcHV0dGUgd3JvdGU6Cj4KPiBPbiAyNS4wNi4x
OSAxNTo1NCwgQmVuIEdyZWVhciB3cm90ZToKPj4KPj4KPj4gT24gMDYvMjUvMjAxOSAwMjo1MyBB
TSwgS29lbiBWYW5kZXB1dHRlIHdyb3RlOgo+Pj4KPj4+IE9uIDI0LjA2LjE5IDIyOjA0LCBCZW4g
R3JlZWFyIHdyb3RlOgo+Pj4+IE9uIDYvMjQvMTkgODozMiBBTSwgS29lbiBWYW5kZXB1dHRlIHdy
b3RlOgo+Pj4+PiBIaSBCZW4sCj4+Pj4+IEhpIEFsbCwKPj4+Pj4KPj4+Pj4gU28gSSdtIGdvaW5n
IHRvIGdpdmUgdGhpcyBhbm90aGVyIHRyeSAuLgo+Pj4+PiBBcyB0aGUgSUJTUyBmdW5jdGlvbmFs
aXR5IGlzIGhlYXZpbHkgYWR2ZXJ0aXNlZCBhcyBhIGRlbHRhIHRvIAo+Pj4+PiBtYWlubGluZSwg
aXQgd291bGQgYmUgdmVyeSBuaWNlIHRvIGdldCBpdCB3b3JraW5nIGFsc28gOikKPj4+Pj4KPj4+
Pj4gVGVzdGluZyB0aGUgbGF0ZXN0IGF0aDEway1jdCBkcml2ZXIgYW5kIGZpcm13YXJlIHNlZW1z
IHRvIGJlIGEgCj4+Pj4+IHN0ZXAgYmFjayBjb21wYXJlZCB0byByb3VnaGx5IGEgbW9udGggYWdv
Lgo+Pj4+Pgo+Pj4+PiBJJ20gY3VycmVudGx5IHNlZWluZyB0aGUgZmlybXdhcmUgY3Jhc2hpbmcs
IHdoaWNoIHdhcyBub3QgdGhlIGNhc2UgCj4+Pj4+IGJlZm9yZToKPj4+Pj4KPj4+Pj4KPj4+Pj4g
YXRoMTBrLWN0ICsgaHR0LWZ3Ogo+Pj4+Pgo+Pj4+PiBodHRwczovL3Bhc3RlYmluLmNvbS9yYXcv
N1N5OXl4NnMKPj4+Pgo+Pj4+IExvb2tzIGxpa2UgZmlybXdhcmUgcmFuIG91dCBvZiBzb21lIFdN
SSBldmVudCBidWZmZXJzIGFuZCBjcmFzaGVkIAo+Pj4+IGluc3RlYWQgb2YgaGFuZGxpbmcKPj4+
PiBpdCBtb3JlIGdyYWNlZnVsbHkuCj4+Pj4KPj4+PiBQbGVhc2UgdHJ5IHRoZSBhdHRhY2hlZCAo
dW50ZXN0ZWQpIGZpcm13YXJlIGFuZCBzZWUgaWYgaXQgYmVoYXZlcyAKPj4+PiBiZXR0ZXIuCj4+
Pj4KPj4+IEhpIEJlbiwKPj4+Cj4+PiAxIHN0ZXAgZm9yd2FyZCBoZXJlLgo+Pj4KPj4+IEknbSBu
b3Qgc2VlaW5nIGNyYXNoZXMgYW55bW9yZSB1c2luZyB0aGUgdGVzdC1maXJtd2FyZS4KPj4+Cj4+
PiBodHRwczovL3Bhc3RlYmluLmNvbS9yYXcvNFplWHU3aXcKPj4+Cj4+Pgo+Pj4gSSd2ZSBsaW5r
ZWQgdXAgMiBJQlNTIGRldmljZXMgKHdhdmUgMSwgVkhUODApCj4+Pgo+Pj4gT0xTUiB0cmFmZmlj
IChVRFApIHdvcmtzIGFuZCBwYWNrZXRzIGhlcmUgYXJlIG5pY2VseSBnb2luZyBiYWNrICYgCj4+
PiBmb3J0aC4KPj4+Cj4+PiBTaW1wbHkgcGluZ2luZyAoSUNNUCkgYmV0d2VlbiB0aGUgMiBkZXZp
Y2VzIGRvZXMgbm90IHdvcmsuCj4+Pgo+Pj4gV2hlbiBzZW5kaW5nIDEwMCBwaW5ncywgKDY0IGJ5
dGUgbGFyZ2UpwqAgc29tZXRpbWVzIDEgZ2V0cyB0aHJvdWdoIC4uIAo+Pj4gYnV0IHdpdGggYSBs
YXRlbmN5IG9mID4gNTAwbXMKPj4+Cj4+Pgo+Pj4gSSB0aGluayBpZiB0aGUgc3BsYXQgYW5kIHRo
ZSBiZWFjb24gc3BhbSBiZWxvdyBjb3VsZCBiZSBmaXhlZCAuLiAKPj4+IHRoaXMgd291bGQgYmUg
YSBtYWpvciBzdGVwIGZvcndhcmQ6Cj4+Pgo+Pj4gW8KgwqAgMzAuMzI4NDIzXSAtLS0tLS0tLS0t
LS1bIGN1dCBoZXJlIF0tLS0tLS0tLS0tLS0KPj4+IFvCoMKgIDMwLjMzMzI1MV0gV0FSTklORzog
Q1BVOiAwIFBJRDogMTU3OCBhdCAKPj4+IC9tbnQvcmFtZGlzay9rb2VuL2Zpcm13YXJlL2J1aWxk
cy9nZW5lcmljX3JiOTIyL2J1aWxkX2Rpci90YXJnZXQtbWlwc18yNGtjX211c2wvbGludXgtYXI3
MXh4X21pa3JvdGlrL2F0aDEway1jdC0yMDE5LTA1LTA4LWY5OGI2ZGM0L2F0aDEway00LjE5L21h
Yy5jOjY1NjMgCj4+PiBhdGgxMGtfbWFjX3ZpZl9iZWFjb25fZnJlZSsweGM3Yy8weDExNWMgW2F0
aDEwa19jb3JlXQo+Pj4gW8KgwqAgMzAuMzU1NjM2XSBNb2R1bGVzIGxpbmtlZCBpbjogbWJ0IGF0
aDlrIGF0aDlrX2NvbW1vbiBxY3NlcmlhbCAKPj4+IHBwcG9lIHBwcF9hc3luYyBvcHRpb24gY2Rj
X21iaW0gYXRoOWtfaHcgYXRoMTBrX3BjaSBhdGgxMGtfY29yZSBhdGggCj4+PiB1c2Jfd3dhbiBz
aWVycmFfbmV0IHNpZXJyYSBybmRpc19ob3N0IHFtaV93d2FuIHBwcG94IHBwcF9nZW5lcmljIAo+
Pj4gbWFjODAyMTEgaXB0YWJsZV9uYXQgaXB0YWJsZV9tYW5nbGUgaXB0YWJsZV9maWx0ZXIgaXB0
X1JFSkVDVCAKPj4+IGlwdF9NQVNRVUVSQURFIGlwX3RhYmxlcyBodWF3ZWlfY2RjX25jbSBmdGRp
X3NpbyBjZmc4MDIxMSBjZGNfc3Vic2V0IAo+Pj4gY2RjX25jbSBjZGNfZXRoZXIgeHRfdGltZSB4
dF90Y3B1ZHAgeHRfc3RhdGUgeHRfbmF0IHh0X211bHRpcG9ydCAKPj4+IHh0X21hcmsgeHRfbWFj
IHh0X2xpbXQKPj4+IFvCoMKgIDMwLjQyNzMzMV3CoCBubHNfdXRmOCBubHNfaXNvODg1OV8xIG5s
c19jcDQzNyBhdXRoZW5jIAo+Pj4gZWhjaV9wbGF0Zm9ybSBzZF9tb2Qgc2NzaV9tb2QgZWhjaV9o
Y2QgZ3Bpb19idXR0b25faG90cGx1ZyBleHQ0IAo+Pj4gbWJjYWNoZSBqYmQyIHVzYmNvcmUgbmxz
X2Jhc2UgdXNiX2NvbW1vbiBwdHAgcHBzX2NvcmUgbWlpIGFlYWQgCj4+PiBjcnlwdG9fbnVsbCBj
cnlwdG9tZ3IgY3JjMzJjX2dlbmVyaWMgY3J5cHRvX2hhc2gKPj4+IFvCoMKgIDMwLjQ0ODAxN10g
Q1BVOiAwIFBJRDogMTU3OCBDb21tOiB3cGFfc3VwcGxpY2FudCBOb3QgdGFpbnRlZCAKPj4+IDQu
MTQuMTI5ICMwCj4+Cj4+IFBsZWFzZSBsb29rIGluIHlvdXIgY29kZSBhbmQgbGV0IG1lIGtub3cg
dGhlIHNvdXJjZSBhcm91bmQgdGhlIGxpbmUgCj4+IGluIG1hYy5jICg2NTYzKSB0aGF0IGlzIHNw
bGF0dGluZy4KPj4KPj4gQWxzbywgeW91IG1pZ2h0IGdyYWIgdGhlIGxhdGVzdCBhdGgxMGstY3Qg
cmVwbywgaXQgaGFzIGEgdHdlYWsgdGhhdCAKPj4gbWlnaHQgZml4IHRoZSBTV0JBIG92ZXJydW4K
Pj4gbWVzc2FnZXMuCj4+Cj4+IGh0dHBzOi8vZ2l0aHViLmNvbS9ncmVlYXJiL2F0aDEway1jdAo+
Pgo+PiBUaGFua3MsCj4+IEJlbgo+Pgo+IEhpIEJlbiwKPgo+IEhlcmUgaXMgdGhlIG91dHB1dCBi
YXNlZCBvbiB0aGUgbGF0ZXN0IGdpdCBIRUFEIG9mIHlvdXIgY3QgdHJlZSwgCj4gY29tYmluZWQg
d2l0aCB0aGUgdGVzdCBmaXJtd2FyZToKPgo+IGh0dHBzOi8vcGFzdGViaW4uY29tL3Jhdy9rd0M2
YzE4Sgo+Cj4KPiBSZWdhcmRzLAo+Cj4gS29lbgo+CkhlcmUgaXMgdGhlIHNvdXJjZSBhcyBjb21w
aWxlZCBpbiBvcGVud3J0OgoKaHR0cDovL3d3dy54YmFjay5iZS9hdGgxMGstNDE5LnRhci54egoK
CktvZW4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVs
Cg==

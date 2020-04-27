Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A23E61BB0C6
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Apr 2020 23:51:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=86Sreu7jJIZDSuzv4/dYIajnICMAm8YKleACPaYuEQY=; b=Oln3Bch+ZD4VxgtBQ4OY0XSwx
	OHPEFKFyl/m45vyz9Rn6DxaKPMXFPHiiPwgmkoZ3zt2mk5z4oEWnY9u5c42VORgrVt9RVbQKW1l3E
	ZJ1eDtuhw9AL3l63VJ1TOJHcUWkC7D7phmDRmNh5xrDzroYXHD0d2bVeUa+jltb/ao4V2d+KvYf1+
	bZerJYKcOQfp8nfIj3UftznbvGOWGZS1gfB6o89y5xyj4s6tGYZ+S06qnxM9UbA6gYH94exGlG6Jj
	BcQCPigcOWwkQE27fDwy2HLplbeEy/8l56vSL5HK8SxF/MFM6GBQbTtgSphfHGNbajH4o+sc08kCO
	xYkO10VOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTBec-0003WD-3K; Mon, 27 Apr 2020 21:51:06 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTBeV-0003Uu-Kw
 for openwrt-devel@lists.openwrt.org; Mon, 27 Apr 2020 21:51:01 +0000
Received: by mail-wr1-f68.google.com with SMTP id k13so22358620wrw.7
 for <openwrt-devel@lists.openwrt.org>; Mon, 27 Apr 2020 14:50:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kresin-me.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=0sdycPrFbItxLcdyt46u1k18iH/MhY7ol6ij0hObsi0=;
 b=wSOC3z5V8It9w9Ua/2iId3/XbjWyzW3Yb8nWOoXTsREq7JhCWB/w6xblNdBY9AOIMe
 n59XAdbV3We64D3qsgoeb/DFLw0TpzjJumzQhXlmWfopZ9zwk3fesUXgeqzuCSYkMKqY
 aQpoYg1K+uTFABPSRYrx60G+xSEobh9NQj4kyzIqStF8/aJ431ozt2+LjAKz4s0inygA
 YvvX7qKZUdUVgnjNSyxBSW6uh/ycEZ0ykSesMgfGlUSbqt0FO6jFqSpKgkU6BFVOrr9j
 JcLfE0JW93KYgcA+Vcc70Kako1p7JJUOF2Mxipk5wkvcea41FtxFuXcPdQqSaEC2HKhF
 jTCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0sdycPrFbItxLcdyt46u1k18iH/MhY7ol6ij0hObsi0=;
 b=m53XKyJPDiPIsGGdIlbfqy8i+36svslpdKODHYh0i14pRndIfM9m1pYrBB2F3ro2rb
 Hr9FGNID4j26qerFLD8AO39Tzfp5InIqAKM3UTIeh2R+BcMz9a2UHdwFSreAUaWSRjhk
 3ue31PQZ9fMGvA4kfZbUcjF/xGBhJfKp0Nnwp/QhjDlOeugwHbp+vfyALynPfzPqy89V
 mMyg+Esi4eiB0khxmnIOONa2WkSBsdSKbu6IjQ9Q92ywbOtaxsAHuksR9w8ehXZ+wPq4
 jyaKMWsjdLDCmB7FVE7xFymEWtGVQ4mnvG865pjwCw6uDscQVFAX9lxwUqBwnvc3NsA+
 uzUA==
X-Gm-Message-State: AGi0PuZHw5wy60OsNe0HUJJ5ue7mqAthlPuZ4/TsXTWmEGrnZSm/i5gt
 sn0lbb+DUvhMgS73gVKDLY9xJn7wj1w=
X-Google-Smtp-Source: APiQypKUkKcUPKNUPoRedjTds+YytGbLh9+Jialvvby70933t68sgr6FNYFUuz+wExiZqUpe6YKfSQ==
X-Received: by 2002:adf:c3ca:: with SMTP id d10mr31092811wrg.64.1588024252197; 
 Mon, 27 Apr 2020 14:50:52 -0700 (PDT)
Received: from ?IPv6:2003:ec:2f26:8800:90a3:dbbe:fedd:5ac6?
 (p200300EC2F26880090A3DBBEFEDD5AC6.dip0.t-ipconnect.de.
 [2003:ec:2f26:8800:90a3:dbbe:fedd:5ac6])
 by smtp.gmail.com with ESMTPSA id 145sm717298wma.1.2020.04.27.14.50.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Apr 2020 14:50:51 -0700 (PDT)
To: =?UTF-8?Q?Benedikt-Alexander_Mokro=c3=9f?= <openwrt@bamkrs.de>,
 openwrt-devel@lists.openwrt.org
References: <040ba113-764c-9b06-930c-b147c5ab7f90@bamkrs.de>
From: Mathias Kresin <dev@kresin.me>
Message-ID: <161cf291-f411-36a8-176c-e5c15dd2f89a@kresin.me>
Date: Mon, 27 Apr 2020 23:50:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <040ba113-764c-9b06-930c-b147c5ab7f90@bamkrs.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_145059_735029_D15E3565 
X-CRM114-Status: GOOD (  18.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: mmc: Read mmc-caps from dt with
 mmc_of_parse
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

MjcvMDQvMjAyMCAxMDo0MCwgQmVuZWRpa3QtQWxleGFuZGVyIE1va3Jvw586Cj4gVGhlIG9yaWdp
bmFsIG1tYy1kcml2ZXIgZm9yIHJhbWlwcyB1c2VkIGhhcmRjb2RlZCBtbWMtY2Fwcy4KPiBUaGlz
IHBhdGNoIHJlbW92ZXMgdGhlIGhhcmRjb2RlZCBjYXBzIGFuZCBlbmFibGVzIGR0IHBhcnNpbmcg
d2l0aCAKPiBtbWNfb2ZfcGFyc2UuCj4gCj4gU2lnbmVkLW9mZi1ieTogQmVuZWRpa3QtQWxleGFu
ZGVyIE1va3Jvw58gPG9wZW53cnRAYmFta3JzLmRlPgo+IC0tLQo+ICDCoC4uLi9yYW1pcHMvZmls
ZXMvZHJpdmVycy9tbWMvaG9zdC9tdGstbW1jL3NkLmPCoMKgwqDCoMKgIHwgMTMgKysrKysrKysr
Ky0tLQo+ICDCoDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygt
KQo+IAo+IGRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvcmFtaXBzL2ZpbGVzL2RyaXZlcnMvbW1j
L2hvc3QvbXRrLW1tYy9zZC5jIAo+IGIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9maWxlcy9kcml2ZXJz
L21tYy9ob3N0L210ay1tbWMvc2QuYwo+IGluZGV4IDhjYmM4N2RhM2EuLmMwMjc1MjYxMTggMTAw
NjQ0Cj4gLS0tIGEvdGFyZ2V0L2xpbnV4L3JhbWlwcy9maWxlcy9kcml2ZXJzL21tYy9ob3N0L210
ay1tbWMvc2QuYwo+ICsrKyBiL3RhcmdldC9saW51eC9yYW1pcHMvZmlsZXMvZHJpdmVycy9tbWMv
aG9zdC9tdGstbW1jL3NkLmMKPiBAQCAtMjIzNSwxMCArMjIzNSwxOSBAQCBzdGF0aWMgaW50IG1z
ZGNfZHJ2X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgCj4gKnBkZXYpCj4gIMKgwqDCoMKg
IG1tYy0+Zl9tYXjCoMKgwqDCoMKgID0gSE9TVF9NQVhfTUNMSzsKPiAgwqDCoMKgwqAgbW1jLT5v
Y3JfYXZhaWzCoCA9IE1TRENfT0NSX0FWQUlMOwo+IAo+IC3CoMKgwqAgbW1jLT5jYXBzwqDCoCA9
IE1NQ19DQVBfTU1DX0hJR0hTUEVFRCB8IE1NQ19DQVBfU0RfSElHSFNQRUVEOwo+ICvCoMKgwqAg
cmV0ID0gbW1jX29mX3BhcnNlKG1tYyk7Cj4gK8KgwqDCoCBpZiAocmV0KQo+ICvCoMKgwqDCoMKg
wqDCoCBnb3RvIHJlbGVhc2U7Cj4gCj4gLcKgwqDCoCAvL1RPRE86IHJlYWQgdGhpcyBhcyBidXMt
d2lkdGggZnJvbSBkdCAodmlhIG1tY19vZl9wYXJzZSkKPiAtwqDCoMKgIG1tYy0+Y2Fwc8KgIHw9
IE1NQ19DQVBfNF9CSVRfREFUQTsKPiArwqDCoMKgIGlmIChtbWMtPmZfbWF4ID4gSE9TVF9NQVhf
TUNMSykgewo+ICvCoMKgwqDCoMKgwqDCoCBkZXZfd2FybihtbWMtPnBhcmVudCwKPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJcIm1heC1mcmVxdWVuY3lcIiBwcm9wZXJ0eSBncmVh
dGVyIHRoYW4gbWF4LWZyZXF1ZW5jeSAKPiBvZiAlZCwgdXNpbmcgJWQuXG4iLAo+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgSE9TVF9NQVhfTUNMSywgSE9TVF9NQVhfTUNMSyk7Cj4g
K8KgwqDCoMKgwqDCoMKgIG1tYy0+Zl9tYXggPSBIT1NUX01BWF9NQ0xLOwo+ICvCoMKgwqAgfQo+
ICsKPiArwqDCoMKgIC8qIEl0IHNlZW1zIHRoZXNlIGNhcHMgbXVzdCBiZSBzZXQgcmVnYXJkbGVz
IG9mIHRoZSBkdCAqLwo+ICvCoMKgwqAgbW1jLT5jYXBzwqDCoCA9IE1NQ19DQVBfTU1DX0hJR0hT
UEVFRCB8IE1NQ19DQVBfU0RfSElHSFNQRUVEOwo+IAo+ICDCoMKgwqDCoCBjZF9hY3RpdmVfbG93
ID0gIW9mX3Byb3BlcnR5X3JlYWRfYm9vbChwZGV2LT5kZXYub2Zfbm9kZSwgCj4gIm1lZGlhdGVr
LGNkLWhpZ2giKTsKPiAKCldoaWxlIHRoZSBjb21taXQgbWVzc2FnZSBtZW50aW9ucyB0aGUgcmVt
b3ZhbCBvZiBtdWx0aXBsZSBoYXJkY29kZWQgCmNhcHMsIGl0J3Mgb25seSBNTUNfQ0FQXzRfQklU
X0RBVEEgYXMgZmFyIGFzIEkgY2FuIHNlZS4KCk5vdyB0aGF0IHRoZSBoYXJkY29kZWQgTU1DX0NB
UF80X0JJVF9EQVRBIGlzIGdvbmUsIHRoZSBidXMtd2lkdGggCnByb3BlcnR5IG5lZWQgdG8gYmUg
YWRkZWQgdG8gYWxsIGV4aXN0aW5nIGRldmljZXRyZWUgc291cmNlIGZpbGVzIHVzaW5nIAp0aGUg
ZHJpdmVyLCB0byBrZWVwIHRoZSBmb3JtZXIgYmVoYXZpb3VyLgoKV2l0aCB0aGUgc3dpdGNoIHRv
IHRoZSBjb21tb24gbW1jIGJpbmRpbmcsIGF0IGxlYXN0IHRoZSBtZWRpYXRlayxjZC1oaWdoIApw
cm9wZXJ0eSBjYW4gYmUgcmVwbGFjZWQgYnkgdGhlaXIgbW1jIGJpbmRpbmcgZXF1aXZhbGVudCAi
Y2QtaW52ZXJ0ZWQiLgoKTWF0aGlhcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBs
aXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGlu
Zm8vb3BlbndydC1kZXZlbAo=

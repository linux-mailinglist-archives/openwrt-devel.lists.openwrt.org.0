Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 002B51350A1
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 Jan 2020 01:48:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:
	Message-Id:Date:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WyhasRIxq2GwyKfl6dDa6xLAfF5BFYVIBHCqE0GT2Ak=; b=HuemIUj6U/i0dr
	Z6RwjlwTObK8nF2ZxM9r/G9bRy+PIpF40/dHDDXUEzvcRLm/c3FYYTYxUQuRCgbl9aVG+1qmBhPHo
	RizqvpXOkpoQ1JScL4nrRTVzddsRDYqtrAr05WeI3FT5G9K7wkV0gFeybDoyXbPPtXoulV3T7WgFJ
	GkxY+NuSyBdo3+B+lVECJdFA8hw5iQ1uFUnKl5Y4BP73O8kkoyNhcl2FPH0UWwoOh/eVqm/YFgnxh
	XCJez/brqI3HNDgxEto4GPDQBfuyi8HPW3GvUPpL9FNUtL+5XMGS8y2arj8zHtwZCa1mcYo6snTWN
	4vZ7zj2yV5bwVV8G8urg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipLzq-0004kA-FL; Thu, 09 Jan 2020 00:48:22 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipLze-0004iW-PZ
 for openwrt-devel@lists.openwrt.org; Thu, 09 Jan 2020 00:48:16 +0000
Received: by mail-pg1-x541.google.com with SMTP id r11so2371698pgf.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 08 Jan 2020 16:48:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=XYliwVQl2IWUw+uKR3soYM4bDBTyeESNFmjLxVhxYMk=;
 b=nYw10ANnrK9rqwy/pJAwue1Pqz9Qnf4VIKaRPQZ1j7g5UnJj17S+7Enr947U1IextH
 0nXWif8QAd+/s5KQ+A4evUwLtRqIYaOd13jwOsneFNHVJL2IJbbmtDU8xIIvL+MsWBIB
 4xSHhOyydC8JaE3sNQSek/bEOpZ8dtD2Qa2Q8rGB8nDlbY7C44zueGO0vzqJRqW38ak1
 A4r5xt/xr6sJNyosOTWDlculQQvDFN3vraYEldsJBN4BdF181ZIDzh+jO52VwPQGO4dY
 kitHiXIPVM5iCA6IbyCo9yYFjg9PLBEFZcfieJgaSOvtFaPN1gC4SJPd7KdFBEkEEn3/
 WPuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=XYliwVQl2IWUw+uKR3soYM4bDBTyeESNFmjLxVhxYMk=;
 b=JZho0m4ucphNtgvCnhEaBG4uPugauovQM3r+nrDCQcHsM5Z6ayhlNmQRbxiyiKf//G
 8fl07xG+afu14U0jRJ/ly9RfVwQDua0OmubqJLkQ7FyS/6riptiOcnI1Asi5PU8S5XY0
 IlPVi1bBuD5nw5is2Ni9KLaSfnVsKJSUz5wbIBGweU/s0Q9K5MVqDUWYDDHvdPaD5ha0
 0gjvqY4+jdSxlVcgvBKVUcyC6PzPIPc4rtDEGYPtva4S8AU6CCd5eOpiDmSgd+41OxFv
 Qb/Cw/K9utXrXkGPpwhCtnlzvccXLxS9wWWFijBFxQA9XQwuCR4AqxafZu/C5Dq2QxiR
 saJQ==
X-Gm-Message-State: APjAAAU3VHDMnlk5wDBzl2Q7j/VO3OfGiDRU0+qJQrEV0ItdYMCVB1S1
 tQEG47itG6rGCJ8bdcoMFso=
X-Google-Smtp-Source: APXvYqwzCrJaq8Kl24VTffrKpj+cXkcc8HSR6WylNawn1qozDCMcs+hMVp7s1qBv1bqjA/pOQtYZvw==
X-Received: by 2002:a65:5809:: with SMTP id g9mr8359621pgr.146.1578530889848; 
 Wed, 08 Jan 2020 16:48:09 -0800 (PST)
Received: from [192.168.0.147] ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id l66sm4516610pga.30.2020.01.08.16.48.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Jan 2020 16:48:09 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 8 Jan 2020 16:48:07 -0800
Message-Id: <6869A6F1-EC92-476A-B9AF-5B15D7DB0DA2@gmail.com>
References: <CAKR_QVJ7t-LDJx2anf7sar1JW1b8dR0i-RPRSqGJrKAjwwWU+w@mail.gmail.com>
In-Reply-To: <CAKR_QVJ7t-LDJx2anf7sar1JW1b8dR0i-RPRSqGJrKAjwwWU+w@mail.gmail.com>
To: Tom Psyborg <pozega.tomislav@gmail.com>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_164810_886001_640200C9 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: ag71xx: use
 netif_receive_skb_list on 4.19
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

CgpTZW50IGZyb20gbXkgaVBob25lCgo+IE9uIEphbiA4LCAyMDIwLCBhdCAyOjUwIFBNLCBUb20g
UHN5Ym9yZyA8cG96ZWdhLnRvbWlzbGF2QGdtYWlsLmNvbT4gd3JvdGU6Cj4gCj4g77u/T24gMDgv
MDEvMjAyMCwgUm9zZW4gUGVuZXYgPHJvc2VucEBnbWFpbC5jb20+IHdyb3RlOgo+PiBGcm9tOiBD
aHVhbmhvbmcgR3VvIDxnY2g5ODEyMTNAZ21haWwuY29tPgo+PiAKPj4gVGhpcyBuZXcgZnVuY3Rp
b24gbWFrZSBiYXRjaCBwcm9jZXNzaW5nIG9mIG5ldHdvcmsgcGFja2V0cyBwb3NzaWJsZSwKPj4g
d2hpY2ggc2xpZ2h0bHkgaW1wcm92ZXMgcGVyZm9ybWFuY2UuCj4+IAo+PiBTaWduZWQtb2ZmLWJ5
OiBDaHVhbmhvbmcgR3VvIDxnY2g5ODEyMTNAZ21haWwuY29tPgo+PiBUZXN0ZWQtYnk6IFJvc2Vu
IFBlbmV2IDxyb3NlbnBAZ21haWwuY29tPgo+PiAtLS0KPj4gYXJvdW5kIGEgMjBtYnBzIGltcHJv
dmVtZW50IGlzIG1lYXN1cmVkIG9uIGEgVFAtTElOSyBBcmNoZXIgQzd2Mgo+PiAuLi4vbmV0L2V0
aGVybmV0L2F0aGVyb3MvYWc3MXh4L2FnNzF4eF9tYWluLmMgfCAyMCArKysrKysrKysrKysrKysr
KystCj4+IDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+
IAo+PiBkaWZmIC0tZ2l0Cj4+IGEvdGFyZ2V0L2xpbnV4L2F0aDc5L2ZpbGVzL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2F0aGVyb3MvYWc3MXh4L2FnNzF4eF9tYWluLmMKPj4gYi90YXJnZXQvbGludXgv
YXRoNzkvZmlsZXMvZHJpdmVycy9uZXQvZXRoZXJuZXQvYXRoZXJvcy9hZzcxeHgvYWc3MXh4X21h
aW4uYwo+PiBpbmRleCAwOTI0YjgxYjkyLi44ODMxYTUxYWNjIDEwMDY0NAo+PiAtLS0KPj4gYS90
YXJnZXQvbGludXgvYXRoNzkvZmlsZXMvZHJpdmVycy9uZXQvZXRoZXJuZXQvYXRoZXJvcy9hZzcx
eHgvYWc3MXh4X21haW4uYwo+PiArKysKPj4gYi90YXJnZXQvbGludXgvYXRoNzkvZmlsZXMvZHJp
dmVycy9uZXQvZXRoZXJuZXQvYXRoZXJvcy9hZzcxeHgvYWc3MXh4X21haW4uYwo+PiBAQCAtMTEw
NiwxNCArMTEwNiwyMiBAQCBzdGF0aWMgaW50IGFnNzF4eF9yeF9wYWNrZXRzKHN0cnVjdCBhZzcx
eHggKmFnLCBpbnQKPj4gbGltaXQpCj4+ICAgIHVuc2lnbmVkIGludCBvZmZzZXQgPSBhZy0+cnhf
YnVmX29mZnNldDsKPj4gICAgaW50IHJpbmdfbWFzayA9IEJJVChyaW5nLT5vcmRlcikgLSAxOwo+
PiAgICBpbnQgcmluZ19zaXplID0gQklUKHJpbmctPm9yZGVyKTsKPj4gKyNpZiAoTElOVVhfVkVS
U0lPTl9DT0RFID49IEtFUk5FTF9WRVJTSU9OKDQsMTksMCkpCj4+ICsgICAgc3RydWN0IGxpc3Rf
aGVhZCByeF9saXN0Owo+PiArICAgIHN0cnVjdCBza19idWZmICpuZXh0Owo+PiArI2Vsc2UKPj4g
ICAgc3RydWN0IHNrX2J1ZmZfaGVhZCBxdWV1ZTsKPj4gKyNlbmRpZgo+PiAgICBzdHJ1Y3Qgc2tf
YnVmZiAqc2tiOwo+PiAgICBpbnQgZG9uZSA9IDA7Cj4+IAo+PiAgICBEQkcoIiVzOiByeCBwYWNr
ZXRzLCBsaW1pdD0lZCwgY3Vycj0ldSwgZGlydHk9JXVcbiIsCj4+ICAgICAgICAgICAgZGV2LT5u
YW1lLCBsaW1pdCwgcmluZy0+Y3VyciwgcmluZy0+ZGlydHkpOwo+PiAtCj4+ICsjaWYgKExJTlVY
X1ZFUlNJT05fQ09ERSA+PSBLRVJORUxfVkVSU0lPTig0LDE5LDApKQo+PiArICAgIElOSVRfTElT
VF9IRUFEKCZyeF9saXN0KTsKPj4gKyNlbHNlCj4+ICAgIHNrYl9xdWV1ZV9oZWFkX2luaXQoJnF1
ZXVlKTsKPj4gKyNlbmRpZgo+PiAKPj4gICAgd2hpbGUgKGRvbmUgPCBsaW1pdCkgewo+PiAgICAg
ICAgdW5zaWduZWQgaW50IGkgPSByaW5nLT5jdXJyICYgcmluZ19tYXNrOwo+PiBAQCAtMTE1NSw3
ICsxMTYzLDExIEBAIHN0YXRpYyBpbnQgYWc3MXh4X3J4X3BhY2tldHMoc3RydWN0IGFnNzF4eCAq
YWcsIGludAo+PiBsaW1pdCkKPj4gICAgICAgIH0gZWxzZSB7Cj4+ICAgICAgICAgICAgc2tiLT5k
ZXYgPSBkZXY7Cj4+ICAgICAgICAgICAgc2tiLT5pcF9zdW1tZWQgPSBDSEVDS1NVTV9OT05FOwo+
PiArI2lmIChMSU5VWF9WRVJTSU9OX0NPREUgPj0gS0VSTkVMX1ZFUlNJT04oNCwxOSwwKSkKPj4g
KyAgICAgICAgICAgIGxpc3RfYWRkX3RhaWwoJnNrYi0+bGlzdCwgJnJ4X2xpc3QpOwo+PiArI2Vs
c2UKPj4gICAgICAgICAgICBfX3NrYl9xdWV1ZV90YWlsKCZxdWV1ZSwgc2tiKTsKPj4gKyNlbmRp
Zgo+PiAgICAgICAgfQo+PiAKPj4gbmV4dDoKPj4gQEAgLTExNjcsMTAgKzExNzksMTYgQEAgbmV4
dDoKPj4gCj4+ICAgIGFnNzF4eF9yaW5nX3J4X3JlZmlsbChhZyk7Cj4+IAo+PiArI2lmIChMSU5V
WF9WRVJTSU9OX0NPREUgPj0gS0VSTkVMX1ZFUlNJT04oNCwxOSwwKSkKPj4gKyAgICBsaXN0X2Zv
cl9lYWNoX2VudHJ5X3NhZmUoc2tiLCBuZXh0LCAmcnhfbGlzdCwgbGlzdCkKPj4gKyAgICAgICAg
c2tiLT5wcm90b2NvbCA9IGV0aF90eXBlX3RyYW5zKHNrYiwgZGV2KTsKPj4gKyAgICBuZXRpZl9y
ZWNlaXZlX3NrYl9saXN0KCZyeF9saXN0KTsKPj4gKyNlbHNlCj4+ICAgIHdoaWxlICgoc2tiID0g
X19za2JfZGVxdWV1ZSgmcXVldWUpKSAhPSBOVUxMKSB7Cj4+ICAgICAgICBza2ItPnByb3RvY29s
ID0gZXRoX3R5cGVfdHJhbnMoc2tiLCBkZXYpOwo+PiAgICAgICAgbmV0aWZfcmVjZWl2ZV9za2Io
c2tiKTsKPj4gICAgfQo+PiArI2VuZGlmCj4+IAo+PiAgICBEQkcoIiVzOiByeCBmaW5pc2gsIGN1
cnI9JXUsIGRpcnR5PSV1LCBkb25lPSVkXG4iLAo+PiAgICAgICAgZGV2LT5uYW1lLCByaW5nLT5j
dXJyLCByaW5nLT5kaXJ0eSwgZG9uZSk7Cj4+IC0tCj4+IDIuMjQuMQo+PiAKPj4gCj4+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IG9wZW53cnQtZGV2
ZWwgbWFpbGluZyBsaXN0Cj4+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPj4gaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKPj4g
Cj4gCj4gQW4gaWRlbnRpY2FsIGVtYWlsIGhhcyBiZWVuIHN1Ym1pdHRlZCB5ZXN0ZXJkYXkuIFdo
eSBhcmUgeW91IHNlbmRpbmcgaXQgYWdhaW4/Ck1pc3Rha2Ugb24gbXkgZW5kLiBJIHJlbW92ZWQg
dGhlIGR1cGxpY2F0ZSBmcm9tIHBhdGNod29yay4KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1k
ZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4v
bGlzdGluZm8vb3BlbndydC1kZXZlbAo=

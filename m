Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24CAA13897
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 May 2019 12:08:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m5sfAujXNx42VBlWwfFvMvyiGxJ2K6L/jNQ4gXgMa6k=; b=KQEHsulcLUy5Dh
	dqcvSMf4GTBn4zRPM2+snD9qvETwsM9Kg29dBQ0uC9Xbedo09yiIvMdLg5rkTEhbkQztwYR80pNW1
	w3OQJ6oU9jZMXlqRjGBJlx8lmSpz4apkbCsIhSq8wqywJRijvyVlmAgGXnFhoVibzjfV7v4fuCX4k
	A/dguLRNcI7RXQnbcHQ4CI+Q8KHAfq9lA2lx2l/buPFye36WEbtJQRSvcv6zrwcwPPN3OUpfJ6pss
	7FOIRTs5Kk7b/fbpX1Zw565RbCOPzLITnKuwSAC+fhQEccp7aGX2G2U7jXrCGtgIwdqQ5V1UnKMBP
	0PBpcCjZf8NmzTBDGiTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMraD-0003a6-3b; Sat, 04 May 2019 10:07:53 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMra5-0003Zj-6t
 for openwrt-devel@lists.openwrt.org; Sat, 04 May 2019 10:07:47 +0000
Received: by mail-ot1-x343.google.com with SMTP id g8so7487496otl.8
 for <openwrt-devel@lists.openwrt.org>; Sat, 04 May 2019 03:07:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=1fbDpgufA3iueXFCX+DL7Nxs1H6kEbmC7l+gSzoNcEk=;
 b=Zdb/4ghOG2uB1nSf6vCwnVTWUfnsi7/nd6+GzeKMkJCqjKPpRlj5UH5vofKhepfytM
 OlzwPnVAl7DEClFQvi/K51qpYYSSufF1k/+290AP/OkXmS9lriQsh/qnTtyLcyy5lgbH
 Ub8P5kMDDvBtSNu2vLff/JvuzGbYfnnc3BfXwSr7pwH4TFkCI45XaOBZf8jJEa9d+tgt
 BrKgs65SUvcVyyMp7ZEfM8cCNcP34PdIcHeXvAI3KU1bNmYE6f8L0kegy7bPP4B+uxEg
 iGMmiIVRNH94TI793hOqV6O9SEN26OSqo7njzHuxEF0TDHQlvt9TfcMs+twmfRFCIAnr
 t4ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=1fbDpgufA3iueXFCX+DL7Nxs1H6kEbmC7l+gSzoNcEk=;
 b=mIpdxmJbXS48zK0AEraC2/PL4ZiUq3X/v3h/GJ/bk8NY23HbcZ8qY55KlKD02BDorK
 4gK3to7nb11x8h1i1gAnfYxHEh9vVO+xiv+8RLkNIjtXWqpCxOwCMsgOyI3ezeqVF9B1
 kPD5OutAKY8IjfeEigZ+a3DfNvpkdF/+lEltqNJ1ZYlHuS8BrXMo0vwz4nT97ZC08Crz
 lsnvSkcjidjRwXp34JN+L5U842KRgEpMnTTx3+vRnNaPSPV1kyJPMu0O6/M0c6Te8Bxg
 k2QKJuhLtLLuumCU20QXU9LRHmUtdut9pF7PFDXjAVW9eA+LfjQIb6RnP+uAjHO/JOe/
 RObg==
X-Gm-Message-State: APjAAAVyp6U5Gs0gcKr/0NJ6NlNnrE667SYN18KYnN5/pEslKTRg940+
 0rl//QV/Zsw8MJZ4mTt1F+BB1baRxKysDkbLXwgdSA==
X-Google-Smtp-Source: APXvYqzVpLqhSdSnGHMe3gcA7ctly6AFujmQvlhWvwVXAoFTB0tUTFC9I13e8ZCXx15HMtaLH5FXO5a0RVn1+gYp17c=
X-Received: by 2002:a9d:7185:: with SMTP id o5mr3405352otj.245.1556964464100; 
 Sat, 04 May 2019 03:07:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190503145852.6125-1-kristian.evensen@gmail.com>
 <20190503163247.GF71477@meh.true.cz>
In-Reply-To: <20190503163247.GF71477@meh.true.cz>
From: Kristian Evensen <kristian.evensen@gmail.com>
Date: Sat, 4 May 2019 12:07:33 +0200
Message-ID: <CAKfDRXghj-ymqjT01cNvwXa-w=mWDK38wxFfROgLvx1XjKcw5Q@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_030745_281076_AD34BE9D 
X-CRM114-Status: GOOD (  21.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] ramips: Add support for Head Weblink
 HDRM200
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgUGV0ciwKClRoYW5rcyBhIGxvdCBmb3IgeW91ciBmZWVkYmFjay4gSSBoYXZlIGltcGxlbWVu
dGVkIG1vc3Qgb2YgaXQgYW5kIHRoZQpib2FyZCBzZWVtcyB0byB3b3JrIGZpbmUsIGJ1dCBJIGhh
dmUgc29tZSBxdWVzdGlvbnMuCgpPbiBGcmksIE1heSAzLCAyMDE5IGF0IDY6MzIgUE0gUGV0ciDF
oHRldGlhciA8eW5lenpAdHJ1ZS5jej4gd3JvdGU6Cj4gPiBJbiBvcmRlciB0byBpbnN0YWxsIE9w
ZW5XUlQsIHlvdSBmaXJzdCBuZWVkIHRvIGNvbXBpbGUgYW4gaW5pdHJhbWZzCj4gPiAocmFtZGlz
ayktaW1hZ2UgZm9yIHRoZSBkZXZpY2UuCj4KPiBpZiB0aGUgcmFtZGlzayBpbWFnZSBpcyBuZWVk
ZWQsIHRoZW4gd2UgcHJvYmFibHkgc2hvdWxkIGVuYWJsZSBpdCBmb3IgdGhhdAo+IHRhcmdldCBh
bmQgcHJvdmlkZSBpdCwgd2Ugc2hvdWxkbid0IGRlbWFuZCBlbmQgdXNlcnMgdG8gYnVpbGQgdGhl
IHJhbWRpc2sKPiBpbWFnZXMgYnkgdGhlbXNlbHZlcyBpbiBvcmRlciB0byBiZSBhYmxlIHRvIGlu
c3RhbGwgT3BlbldydCwgcmlnaHQ/Cj4KPiBUaGlzIG5lZWRzIGFkZGluZyBgcmFtZGlza2AgaW4g
RkVBVFVSRVMgaW4gdGFyZ2V0Lm1rLgoKSSBhZ3JlZSwgYnVpbGRpbmcgYSByYW1kaXNrLWltYWdl
IGJ5IGRlZmF1bHQgd291bGQgYmUgcHJlZmVyYWJsZS4KSG93ZXZlciwgd29udCBhZGRpbmcgcmFt
ZGlzayB0byBGRUFUVVJFUyBidWlsZCBhIHJhbWRpc2sgaW1hZ2UgZm9yIGFsbAptdDc2MjAtYm9h
cmRzPyBEbyB5b3Uga25vdyBhbnkgd2F5IHRvIGF2b2lkIHRoYXQ/CgpBbHNvLCBJIGFtIGhhdmlu
ZyBzb21lIGlzc3VlcyBnZXR0aW5nIGEgcmFtZGlzayBpbWFnZSB0byBiZSBidWlsdCBieQpkZWZh
dWx0LiBBZnRlciBhZGRpbmcgcmFtZGlzayB0byBGRUFUVVJFUywgSSBzdGlsbCBuZWVkIHRvIG1h
bnVhbGx5CmNob29zZSB0byBidWlsZCBhIHJhbWRpc2sgaW1hZ2UuIEkgaGF2ZSBzcGVudCBzb21l
IHRpbWUgbG9va2luZyBpbnRvCnRoZSBkaWZmZXJlbnQgbWstZmlsZXMgdG8gdHJ5IHRvIGZpZ3Vy
ZSBvdXQgd2hhdCBjb3VsZCBiZSB3cm9uZywgYnV0CndpdGhvdXQgYW55IGx1Y2suIERvIHlvdSBo
YXZlIGFueSBwb2ludGVycz8KCj4gPiBUaGUgaW1hZ2Ugc2hvdWxkIG5vdyBiZSBsb2FkZWQgdG8g
bWVtb3J5IGFuZCBib2FyZCBib290LiBJZiB0aGUgcm91dGVyCj4gPiByZWJvb3RzIHdoaWxlIHRo
ZSBpbWFnZSBpcyBsb2FkaW5nLCB5b3UgbmVlZCB0byB0cnkgYWdhaW4uCj4KPiBXaHkgZG9lcyBp
dCByZWJvb3Q/IElzIHRoZXJlIGFueSBraW5kIG9mIHdhdGNoZG9nPyBEbyB5b3UgZ2V0IGFueSBl
cnJvciBpbiB0aGUKPiBib290bG9hZGVyPwoKV2h5IHRoZSBib2FyZCByZWJvb3RzIGlzIGEgZ29v
ZCBxdWVzdGlvbi4gSSB0cmllZCB0byBhc2sgdGhlCm1hbnVmYWN0dXJlciwgYnV0IGdvdCBubyBh
bnN3ZXIuIFRoZXJlIGFyZSBubyBlcnJvcnMgIGFzIHRoZSBib2FyZApqdXN0IHN1ZGRlbmx5IHJl
Ym9vdHMsIGJ1dCBJIGRvIHN1c3BlY3QgdGhhdCB0aGVyZSBpcyBzb21lIGtpbmQgb2YKd2F0Y2hk
b2cgdHJpZ2dlcmluZyB0aGUgcmVib290cy4gVGhlIHJlYm9vdCBzZWVtcyB0byBvY2N1ciBhZnRl
cgpyb3VnaGx5IHRoZSBzYW1lIHRpbWUsIGJ1dCBzb21ldGhpbmcgbmVlZHMgdG8gaGFwcGVuIGZv
ciB0aGUgcmVib290IHRvCmJlIHRyaWdnZXJlZC4gRm9yIGV4YW1wbGUsIEkgY2FuIGlkbGUgb24g
dGhlIGJvb3Rsb2FkZXIgY29tbWFuZCBsaW5lCmZvciBhcyBsb25nIGFzIEkgd2FudC4gSG93ZXZl
ciwgaWYgSSB3YWl0IHN1ZmZpY2llbnRseSBsb25nIGJlZm9yZQpwcmVzc2luZyBlbnRlciwgdGhl
biB0aGUgYm9hcmQgcmVib290cy4KCj4gPiArJnBpbmN0cmwgewo+ID4gKyAgICAgc3RhdGVfZGVm
YXVsdDogcGluY3RybDAgewo+ID4gKyAgICAgICAgICAgICBkZWZhdWx0IHsKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICByYWxpbmssZ3JvdXAgPSAiaTJjIiwgInVhcnRmIiwgInBhIiwgInNwaSBy
ZWZjbGsiLCAid2xlZCI7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgcmFsaW5rLGZ1bmN0aW9u
ID0gImdwaW8iOwo+ID4gKyAgICAgICAgICAgICB9Owo+ID4gKyAgICAgfTsKPiA+ICt9Owo+Cj4g
Li4uCgpJIGhhdmUgdG8gYWRtaXQgdGhhdCBJIGRvbid0IHVuZGVyc3RhbmQgd2hhdCB5b3UgYXJl
IHJlZmVyaW5nIHRvIHRoZXJlCih1bmxlc3MgaXQgaXMgdGhlIHRvbyBsb25nICJyYWxpbmssZ3Jv
dXAiLWxpbmUpIDopCgpUaGFua3MgYWdhaW4gZm9yIHlvdXIgY29tbWVudHMhCgpCUiwKS3Jpc3Rp
YW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK

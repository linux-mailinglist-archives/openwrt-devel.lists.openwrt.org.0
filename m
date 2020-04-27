Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E16BB1BA6F0
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Apr 2020 16:53:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EPLeeNUbOnTqxrQ/Mo14OVzIpbMjv5qLmRsXgZ/6qSI=; b=HuZraEdZCcYEbJ
	ILhKTKYOUHeeA+ugCQgbkrDBYrP7J20fJIztk8ECrz0NAF/fZzb54tcbUelpSgxEDenPWC4RAHPlj
	C1FEq7pvP0zdjURoilfH7kdHi4z1laB5ObhmmPfjm4x84NqAXTVLA9llbfFwSYvYtRy8BDwy50kVw
	xru0k+CLe9QUtPkZ6XQytBHvOIJUXChCrLM2DnsR9rPB+w8o7K5jIH83KfsqQP8/8OX1hCL2JD22t
	jAQ3AFyPBP60WBvKCGiHmL9Ll0OmQZa0Np3mx45NNjkI5nfmmJC5NW5rkgJyEp0+OmpzdvaSxG3oU
	xUF+WIUhvKkPAveJn2qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT58G-0008HR-On; Mon, 27 Apr 2020 14:53:16 +0000
Received: from mail-ua1-x932.google.com ([2607:f8b0:4864:20::932])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT589-0008GV-TQ
 for openwrt-devel@lists.openwrt.org; Mon, 27 Apr 2020 14:53:11 +0000
Received: by mail-ua1-x932.google.com with SMTP id 36so13471897uaf.9
 for <openwrt-devel@lists.openwrt.org>; Mon, 27 Apr 2020 07:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=H6j71v4AnL5LDGRNsea5ORj2Ryl62Ftaiormaz0VXIo=;
 b=KdbtvRiPVgvXiZoRE9TvbnuX6iK+KKOsMxhmxmxwI4hFnBKuRsKxXJB6/eoThjYeBC
 iGnaHFMzxfiokHnSzNM4n9mrRRZHyAT3/gg8ZSgqZUscIpxWKmYW2hC4aWWtFZGy8fyG
 45eW7EhZqVaWq+1CBrj3bksBY/1ssgPiwRKtL+u1qH7RfRckJRMusu2fFa1f8TevoqcG
 xvqT5IkS6fgy+MWC/bHSQHLhNOzbA2ZObBtMiWEkJImEUj5egloE2SWRc5P+PWyCKQ4o
 l00LZeiapSMTFwiCVnTCOtgKlY1gQNsAvXLwDOHcW7CUvi+3+bceBDi2duw7WHOzu+9A
 uJNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=H6j71v4AnL5LDGRNsea5ORj2Ryl62Ftaiormaz0VXIo=;
 b=Hz9TscNbJMhfJ3Uw/imdWoUr/k5+/pgXA4umLylEuYfA/oydDp38FYdtEG18sEQ2l5
 V81AV3cYDl8QdwRQumhCGyL2mgccDMwU2ffZ8OPiqQ/k9TyC6z4nHVlWY4fr3rt1aP9v
 roARCD8CG1cMgV9CSCRVgLuHh/KB1Z4gHSwVU5I62Sw5U325Z7ejQWMnyYKj8/PgxIV9
 /Vs1MUUsgcv+cJkUoBl65IVP8Y0vLS5UFJOaKfLQAKz2mnZyO4W9DWD6MF3qgFH7rtd7
 JvGmdXYhiN/nAL5D0D9M4LMuVnq5OFafLztR6N8EcJXNJHV0++5XJZF3O0gdxM1LSWw8
 KVwQ==
X-Gm-Message-State: AGi0PubNzoKSFIb7uhtr5RFZOPfZPRjXoWV542yjMG6VLY+JwaD95vJq
 uR8jphBm2UhPWzAy0cpXZz9nucUC5SC63mgi0io=
X-Google-Smtp-Source: APiQypIMkyHSuzlGyOfKjVPhYG0nUnbGQXJxDg+yxN/vTFMqc7FR6W+dBjfvqXCH72XU8a58QigINy++QR2qVrTiDHk=
X-Received: by 2002:a05:6102:3d2:: with SMTP id
 n18mr17089125vsq.157.1587999188516; 
 Mon, 27 Apr 2020 07:53:08 -0700 (PDT)
MIME-Version: 1.0
References: <CALYKT1jbVZ_YkHVZzJ2-CFb=8RxzjmtZM9R1CRhM86=AjC6jFw@mail.gmail.com>
 <877dy1xfq3.fsf@miraculix.mork.no>
In-Reply-To: <877dy1xfq3.fsf@miraculix.mork.no>
From: Bruno Antunes <baantunes@gmail.com>
Date: Mon, 27 Apr 2020 15:52:57 +0100
Message-ID: <CABUTiXU2qhs4CCC4PVTHWj-j5k2VKz4GSqSxuSxNwPiVXnC4EA@mail.gmail.com>
To: =?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_075309_945193_845FE86B 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:932 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [baantunes[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Advice needed - Proper approach to port 5G/LTE
 modem into OpenWRT
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
Cc: Jeonghum Joh <oosaprogrammer@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGVsbG8gSmVvbmdodW0sCkNhbiB5b3Ugc2hhcmUgc29tZSBkZXRhaWxzIG9uIHRoZSBib2FyZHMg
YW5kIG1vZGVtcyB5b3UgYXJlIHVzaW5nPwoKUmVnYXJkcywKQnJ1bm8KCk9uIE1vbiwgMjcgQXBy
IDIwMjAgYXQgMTM6NDIsIEJqw7hybiBNb3JrIDxiam9ybkBtb3JrLm5vPiB3cm90ZToKPgo+IEpl
b25naHVtIEpvaCA8b29zYXByb2dyYW1tZXJAZ21haWwuY29tPiB3cml0ZXM6Cj4KPiA+IEkgYW0g
cG9ydGluZyBhIDVHL0xURSBtb2RlbSBpbnRvIE9wZW5XUlQuCj4KPiBGb2xsb3cgdGhlIGluc3Ry
dWN0aW9ucyBmb3IgTFRFIG1vZGVtcy4gIEEgNUcgbW9kZW0gaXMgcHJldHR5IG11Y2ggdGhlCj4g
c2FtZSB3cnQgZHJpdmVycyBhbmQgYmFzaWMgbWFuYWdlbWVudC4gIEF0IGxlYXN0IGZvciBRdWFs
Y29tbSBiYXNlZAo+IG1vZGVtcyBvbiBhIFVTQiBidXMuICBIYXZlIG5vIGV4cGVyaWVuY2Ugd2l0
aCBhbnl0aGluZyBlbHNlLiAgVGhlIEludGVsCj4gYW5kIEh1YXdlaSBtb2RlbXMgYXJlIGNvbXBl
dGVseSB1bmtub3duIHRvIG1lLCBhbmQgbW9zdCBsaWtlbHkKPiB1bnN1cHBvcnRlZCBmb3IgdGhl
IGZvcnNlZWFibGUgZnV0dXJlLiAgQW5kIEknbSBhbHNvIGJsYW5rIG9uIHRoZSBtYWdpYwo+IG9m
IFF1YWxjb21tcyBQQ0llIGludGVyZmFjZS4gUXVhbGNvbW0gZGlkIHdvcmsgb24gYSBkcml2ZXIs
IGJ1dCBpdCdzCj4gYmVlbiBhIGxvbmcgdGltZSBzaW5jZSBJIHNhdyBhbnkgdXBkYXRlIG9uIHRo
YXQuICBJIGd1ZXNzIG5vIG9uZSBjYXJlcwo+IGVub3VnaC4gIFN1cGVyU3BlZWQgVVNCIGlzIGZp
bmUgZm9yIG1vc3QgdXNlcnMgZm9yIG5vdy4KPgo+IEFueXdheSwgc2V2ZXJhbCBYNTUgYmFzZWQg
bW9kZW1zIGFyZSBhbHJlYWR5IHN1cHBvcnRlZCBvdXQgb2YgdGhlIGJveCBpbgo+IE9wZW5XcnQg
bWFzdGVyLiAgVGhlcmUgaXMgbm8gbmVlZCB0byByZWludmVudCB0aGUgd2hlZWwgaWYgeW91IGFy
ZSB1c2luZwo+IG9uZSBvZiB0aG9zZS4KPgo+IFlvdSBtYXkgb2J2aW91c2x5IGRlY2lkZSB0byBp
bXBsZW1lbnQgeW91ciBvd24gYWx0ZXJuYXRpdmUgc29sdXRpb25zLAo+IGxpa2UgdXNpbmcgc29t
ZSB2ZW5kb3Igc29mdHdhcmUuIEJ1dCB0aGF0IHdpbGwgbGltaXQgdGhlIHVzZXIgY29tbXVuaXR5
Cj4gc2V2ZXJlbHkuIEF0IGxlYXN0IHVudGlsIHRoZSBzb2x1dGlvbiBhdHRyYWN0cyBtb3JlIHVz
ZXJzLiAgQW5kCj4gY29tbXVuaXR5IHN1cHBvcnQgZGVwZW5kcyBvbiB1c2Vycywgd2hpY2ggSSBi
ZWxpZXZlIGlzIHNvbWV0aGluZyB5b3UKPiBzaG91bGQgY29uc2lkZXIgc2luY2UgeW91IGhhdmUg
ZW5kZWQgdXAgaW4gdGhpcyBmb3J1bS4gIFlvdSBhcmUgdW5saWtlbHkKPiB0byBmaW5kIGFueW9u
ZSBoZXJlIHdobyBoYXZlIGFueSBleHBlcmllbmNlIHdpdGggeW91ciBwYXJ0aWN1bGFyIHZlbmRv
cgo+IHNvZnR3YXJlIHZlcnNpb24uCj4KPiBQZXJzb25hbGx5LCBJIGFtIGhhcHB5IHRvIGdpdmUg
YWR2aWNlIGFib3V0IGFueXRoaW5nIHJlZ2FyZGxlc3Mgb2YKPiBleHBlcmllbmNlLiAgQnV0IHRo
ZSBxdWFsaXR5IG9mIHRoYXQgYWR2aWNlIGlzIHByb2JhYmx5IGEgdGlueSBiaXQKPiBiZXR0ZXIg
d2hlbiBpdCBpcyBiYXNlZCBvbiBzb21ldGhpbmcgSSd2ZSB0cmllZCBteXNlbGYuICBPciBtYXli
ZSBub3Q/Cj4gSXMgcHJvYmFibHkgYmFkIGluIGFueSBjYXNlLgo+Cj4KPiBCasO4cm4KPgo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gb3BlbndydC1k
ZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4gaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2
ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9s
aXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79FED3607F
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 17:45:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HbBbNIXG/ebS3+p57DMVg3cQOrYYwgZBtUC/0xihwFE=; b=u+et5H3XXoivA4
	xQyFoQcKUHfZ7ayXlstrvxZhTtQZNo88O9KV/nWuzcxca4S02oIdyaU/jpSXkOzlWIlFMLBVe/u9r
	w3vvzWRkPdwD/j5dK/aiNuawPDJCd+Ya8j6ajdoNSMWKOh3R5NOAf6ZvyhYjk5HlfYnTmGe1QoYU7
	swpMoUwUGBlcKW+R3QfuXTPslLkRmqhKYe9LVT6HOGTn+7X/abWM+F8sNt0DnXDEEdI1Je9+KAfjy
	3nYRA7GCLLVKwdBlQmraRCJ/7WakbAWRG00S1hOBV4FCUbL8LNmLW6jcPgqFWbErrfEWDomk5gBJR
	RIvgkOXFHCLvCzpzBgSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYY6j-0002pW-Nq; Wed, 05 Jun 2019 15:45:45 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYY6c-0002oy-Ei
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 15:45:40 +0000
Received: by mail-wm1-x343.google.com with SMTP id 16so2749258wmg.5
 for <openwrt-devel@lists.openwrt.org>; Wed, 05 Jun 2019 08:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Cmdm6cIWE71Qg3EOH3dwTSUR9YDLaLM7Y4mQJEJv+eY=;
 b=OjCVLhMYtn6C2C135eNSXh0cRuGBWw2sw+GSaJFGvooYDFxIC4Zn+lRYM+SgBpsyef
 A6mX2fy06m4eqGooQq0NX6rbijfmC5GDPkLu7Ay9f92l3wLdXM7GWw1YyIjcHcI2eUSR
 LLaopKtVQf6m0W2ORVQ4im+WkaN3anDA6hJMg/SeXOw9C9Dds4g2T3QnK3SLdIC8Em9A
 OmNdFOld8qHuHD0VCR5WZq6IiJ7ct+SQ7s8AVI0Gpip5qx2gy7Xg4/4mK/k3y16YmBHu
 j7Spr8gKkGrlgsJt49wlDVxSCsFCRevp++Ndo/E4Ji39DDoT+LMJ5XwE9D0CmN4jvQiB
 JFug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Cmdm6cIWE71Qg3EOH3dwTSUR9YDLaLM7Y4mQJEJv+eY=;
 b=WxlEV/upSzKwWo5jITKxCoofz/wMkzr2KdOQHSVAxt+TaawqFL2wsOWE8qUevHlWN3
 qOaXRHiRc3VOjBrIAmvRxvh0bhoBkwkcqOHohS9xjT2EbqlvQ3rRysXhW6SPYAYdOKl6
 A/zZZ6fVU/sGhAcSYmlmHbSMsmnLzeQY142C8V+hsDrEqk7u0BPrK+G6OvRj/rHpsiMq
 B5tvW6cOGI420EzUD8Tw6yHhSZobEP7/sm1HRQZ7hrlWSEydCgitThXXqLAHX9qWLuz8
 QEwPy+P/5CEA/0dc6hb6UKgHZFBEpGb5WHiJnitcdaI+zSDF/ebTl5bVAkWqsxY8aE8S
 nmaA==
X-Gm-Message-State: APjAAAWpiQbT3SISlGPQ7jCvroS9fIvgG54gbMShOuhCj7MQ9be3Ehuv
 oOPvCx5fRWt78xzP0RxO+YxjUO5O6SiynAwsPJ82pGqe
X-Google-Smtp-Source: APXvYqyFlNaQKmUQ+u70WRCnoCJImEpEf0C6AckuMhExJNAkcD8gU2rjk0S4JUVmUD11eHT6alwXayo7G7sFLmtAx+o=
X-Received: by 2002:a1c:9906:: with SMTP id b6mr10974873wme.117.1559749536909; 
 Wed, 05 Jun 2019 08:45:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190605143124.7598-1-tomek_n@o2.pl>
 <20190605143124.7598-2-tomek_n@o2.pl>
In-Reply-To: <20190605143124.7598-2-tomek_n@o2.pl>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Wed, 5 Jun 2019 17:45:33 +0200
Message-ID: <CAOiHx=k3kQ-agOM8DSWr6q+-84H5mhN-CwUGKStK=uu16Z04XA@mail.gmail.com>
To: Tomasz Maciej Nowak <tomek_n@o2.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_084538_538029_B8B2B53F 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jonas.gorski[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] kernel: package module for SafeXcel
 crypto engine
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 =?UTF-8?B?TWFyZWsgQmVow7pu?= <marek.behun@nic.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gV2VkLCA1IEp1biAyMDE5IGF0IDE2OjMyLCBUb21hc3ogTWFjaWVqIE5vd2FrIDx0b21la19u
QG8yLnBsPiB3cm90ZToKPgo+IFN1cHBvcnRzIEVJUDk3IGFuZCBFSVAxOTcgZm91bmQgb24gQXJt
YWRhIDM3eHgsIDdrIGFuZCA4ayBTb0NzLgo+IFVuZm9ydHVuYXRlbHkgZmlybXdhcmUgZm9yIEVJ
UDE5NyBpcyBub3QgZWFzaWx5IG9idGFpbmFibGUsIHRoZXJlZm9yZQo+IHRvIG5vdCBjYXVzZSBs
b3Qgb2YgdXNlciByZXF1ZXN0cyBkaXJlY3RlZCBhdCBPcGVuV3J0LCBwYWNrYWdlIGl0IGFzCj4g
bW9kdWxlIHdpdGggZXhwbGFuYXRpb24gd2hlcmUgdG8gb2J0YWluIHRoZSBmaXJtd2FyZS4KPgo+
IENjOiBNYXJlayBCZWjDum4gPG1hcmVrLmJlaHVuQG5pYy5jej4KPiBTaWduZWQtb2ZmLWJ5OiBU
b21hc3ogTWFjaWVqIE5vd2FrIDx0b21la19uQG8yLnBsPgo+IC0tLQo+ICBwYWNrYWdlL2tlcm5l
bC9saW51eC9tb2R1bGVzL2NyeXB0by5tayB8IDI4ICsrKysrKysrKysrKysrKysrKysrKysrKysr
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvcGFj
a2FnZS9rZXJuZWwvbGludXgvbW9kdWxlcy9jcnlwdG8ubWsgYi9wYWNrYWdlL2tlcm5lbC9saW51
eC9tb2R1bGVzL2NyeXB0by5tawo+IGluZGV4IDljYWIwNGM2ZWQuLmVkMmFiNmFlZDcgMTAwNjQ0
Cj4gLS0tIGEvcGFja2FnZS9rZXJuZWwvbGludXgvbW9kdWxlcy9jcnlwdG8ubWsKPiArKysgYi9w
YWNrYWdlL2tlcm5lbC9saW51eC9tb2R1bGVzL2NyeXB0by5tawo+IEBAIC0zNTAsNiArMzUwLDM0
IEBAIGVuZGVmCj4gICQoZXZhbCAkKGNhbGwgS2VybmVsUGFja2FnZSxjcnlwdG8taHctcGFkbG9j
aykpCj4KPgo+ICtkZWZpbmUgS2VybmVsUGFja2FnZS9jcnlwdG8taHctc2FmZXhjZWwKPiArICBU
SVRMRTo9IE1WRUJVIFNhZmVYY2VsIENyeXB0byBFbmdpbmUgbW9kdWxlCj4gKyAgREVQRU5EUzo9
QExJTlVYXzRfMTkgQChUQVJHRVRfbXZlYnVfY29ydGV4YTUzfHxUQVJHRVRfbXZlYnVfY29ydGV4
YTcyKSBcCgpBc3N1bWluZyB0aGlzIGlzIGlzbid0IGV4Y2x1c2l2ZSB0byA0LjE5LCBhIEAhTElO
VVhfNF8xNCB3b3VsZCBiZSBtb3JlCmZ1dHVyZSBwcm9vZgoKPiArICAgICAgICtrbW9kLWNyeXB0
by1hdXRoZW5jICtrbW9kLWNyeXB0by1tZDUKPiArICBLQ09ORklHOj0gXAo+ICsgICAgICAgQ09O
RklHX0NSWVBUT19BRVM9eSBcCj4gKyAgICAgICBDT05GSUdfQ1JZUFRPX0JMS0NJUEhFUj15IFwK
ClRoZXNlIHR3byBhcmUgYWxyZWFkeSBzZXQgdG8gPXkgYnkgdGhlIGRlZmF1bHQgY29uZmlnLCBu
byBuZWVkIHRvCnNwZWNpZnkgdGhlbSBoZXJlLgoKPiArICAgICAgIENPTkZJR19DUllQVE9fREVW
X1NBRkVYQ0VMIFwKPiArICAgICAgIENPTkZJR19DUllQVE9fSE1BQz15IFwKCitrbW9kLWNyeXB0
by1obWFjCgo+ICsgICAgICAgQ09ORklHX0NSWVBUT19IVz15IFwKPiArICAgICAgIENPTkZJR19D
UllQVE9fU0hBMjU2PXkgXAoKK2ttb2QtY3J5cHRvLXNoYTI1NgoKPiArICAgICAgIENPTkZJR19D
UllQVE9fU0hBNTEyPXkKCitrbW9kLWNyeXB0by1zaGE1MTIKCj4gKyAgRklMRVM6PSQoTElOVVhf
RElSKS9kcml2ZXJzL2NyeXB0by9pbnNpZGUtc2VjdXJlL2NyeXB0b19zYWZleGNlbC5rbwo+ICsg
IEFVVE9MT0FEOj0kKGNhbGwgQXV0b0xvYWQsOTAsY3J5cHRvX3NhZmV4Y2VsKQo+ICsgICQoY2Fs
bCBBZGREZXBlbmRzL2NyeXB0bykKPiArZW5kZWYKPiArCj4gK2RlZmluZSBLZXJuZWxQYWNrYWdl
L2NyeXB0by1ody1zYWZleGNlbC9kZXNjcmlwdGlvbgo+ICtNVkVCVSdzIEVJUDk3IGFuZCBFSVAx
OTcgQ3J5cHRvZ3JhcGhpYyBFbmdpbmUgZHJpdmVyIGRlc2lnbmVkIGJ5Cj4gK0luc2lkZSBTZWN1
cmUuIFRoaXMgaXMgZm91bmQgb24gTWFydmVsbCBBcm1hZGEgMzd4eC83ay84ayBTb0NzLgo+ICsK
PiArUGFydGljdXJhbCB2ZXJzaW9uIG9mIHRoZXNlIElQIChFSVAxOTdCIGFuZCBFSVAxOTdEKSBy
ZXF1aXJlIGZpcm13YXJlLgoKcy9QYXJ0aWN1cmFsL1BhcnRpY3VsYXIvCgo+ICtJdCBjYW4gYmUg
b2J0YWluZWQgYXQgaHR0cHM6Ly9leHRyYW5ldC5tYXJ2ZWxsLmNvbS4KCllvdSBuZWVkIGFuIE5E
QSB0byBvYnRhaW4gaXQsIHdoaWNoIGlzbid0IHNvbWV0aGluZyBwb3NzaWJsZSBmb3IgdGhlCmF2
ZXJhZ2UgZW5kIHVzZXIuIFRoZSBkZXNjcmlwdGlvbiBzaG91bGQgbWFrZSBpdCBjbGVhciB0aGF0
IHRoaXMgaXNuJ3QKYSBzaW1wbGUgImRvd25sb2FkIGhlcmUiIHNpdHVhdGlvbi4gQXJlIHRoZXJl
IGFueSBib2FyZHMgc3VwcG9ydGVkIGJ5Ck9wZW5XcnQgdXNhYmxlIHdpdGhvdXQgdGhlIGZpcm13
YXJlPwoKClJlZ2FyZHMKSm9uYXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L29wZW53cnQtZGV2ZWwK

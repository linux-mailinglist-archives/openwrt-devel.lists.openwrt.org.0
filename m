Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A0D1BEC9F
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 Apr 2020 01:25:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cucbwqSmNnd0LrXfwdx+iD9eTgHw9t7r91rmAdfKyZg=; b=T0kbqxNyVVAiqi
	RuV+7Mx6iD4oweP8rACXsEzAQva5CSC2T1iHvfEUSdBZ43NzIjJ7d//P6V9ql2yJFZCrDTwCEUOkQ
	AeMg6mo16d1cN+0uoR1IuHDx4MnpLLYhNFH6dE250s3YI+Vrg1zWv8TdXAUr13Ncg4Kyvr1goJRjh
	67kzH6kmMMoFBQ1PmmD8YOqIKP35DZ24QqFQQhw3GS3pEVDXtDdLNhgRIe1UcCUkJGOBzSdvAAa4O
	tGTDyxi1ZMrZ1R24JuEzmZC2yh8nDBQG4B4W0hXq0/oIrujSnhg31I5gNrQT1T72F158IUQDL0nCc
	eIaBR6G32NP3tr0mGZ0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTw4s-0000Vr-Re; Wed, 29 Apr 2020 23:25:18 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTw4d-0007yo-LI
 for openwrt-devel@lists.openwrt.org; Wed, 29 Apr 2020 23:25:05 +0000
Received: by mail-qk1-x734.google.com with SMTP id g74so3899063qke.13
 for <openwrt-devel@lists.openwrt.org>; Wed, 29 Apr 2020 16:25:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=fBHXC/DCTUO8ZSqC9biTjJ8DTj8tA6wXhveKFQ4QOmo=;
 b=SVRiBJJpa7zTTd2jWaODMVN8ng4Bhach/LZ1LcYkwzk9xLtzBNMQG41RxMTg3WRH1C
 PdUtZskM2Fi0LOJjJrm8Rxx67Ss4Suo5nMfCuaNPrT0CcDRlsJ2jlDxegMe28LZMOxP0
 nabG00caVlZbe1AeccuYc6Sps6ByNYtlcofhKXNIiIeyrU0YTRGARhjhqcFuSDN3g840
 MClvdydQywb2bWwYhUKlWwdnuS6NOK8aMscP1TKJ/VrkNZrk4Tt32zqC6ucxFA5wr7xa
 HGr7cchbVR7N5Po6XGLEYV/othp9YTnc15JEtrEVGa5AIk41EgMr/CvAHbzwjIc/YpJz
 hd7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=fBHXC/DCTUO8ZSqC9biTjJ8DTj8tA6wXhveKFQ4QOmo=;
 b=lBe3KAAU5AV2mSSPK4Avl6E97ccxcMY51VxUf8sOzeBold+rPDWuePcm8deSbLsp8s
 iSsT6s0pFB8aJdVSUZ+CJOqtVAEuTs+Flg48yNaJVoMo7d6kCaKwfTEB/ukhCsWTmznY
 OuqH+JnWrowuAstNXEHYDMBD7PEscyxviGQ8lZBC+KX6SjgZFnnXKsDnNwN1Bw0ORDOm
 8pwX6ZCEEYYkvIM3omEl/7k3ih6BtA0gtvgqih6UcBXh6tdfZla2bdaJAd4DIMcBQMkl
 TFjRc/OVo/Z19tqCFhTZgwxZM6H7Fplw4g/UyKDbmY5vBbXnZFABx5LRkGJgMyTkv2ka
 MwAw==
X-Gm-Message-State: AGi0PubkXveMXkoUCg+E/+rWinYi3oD3e6YtueAZS4q9WCsIfV8in0Qh
 XYZRQPupSPDEpB4A30/inrqOV20nw3LzQPjO2MQZgtRT
X-Google-Smtp-Source: APiQypIlx9mCu5V8qeNEEDroGCCZkFUyhP6AyuvmGlIf9T7wDqxBPyNtn0LUup/gpq9omDqXBBiJym3TFzcWcRVvZVE=
X-Received: by 2002:a05:620a:1222:: with SMTP id
 v2mr888736qkj.463.1588202701936; 
 Wed, 29 Apr 2020 16:25:01 -0700 (PDT)
MIME-Version: 1.0
References: <40df9416-9391-a1ec-8de6-c050c15bf326@candelatech.com>
In-Reply-To: <40df9416-9391-a1ec-8de6-c050c15bf326@candelatech.com>
From: Robert Marko <robimarko@gmail.com>
Date: Thu, 30 Apr 2020 01:24:50 +0200
Message-ID: <CAOX2RU7TavOBYhZysnOo2nwxh6cLB6JcGL-GQ87+NANj5AZwkA@mail.gmail.com>
To: Ben Greear <greearb@candelatech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_162503_743761_CF6769CB 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:734 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robimarko[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Please pull latest ath10k-ct driver
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGV0ciBhbHJlYWR5IHB1c2hlZCBpdCBhYm91dCBoYWxmIGFuIGhvdXIgYWdvLgpodHRwczovL2dp
dC5vcGVud3J0Lm9yZy8/cD1vcGVud3J0L29wZW53cnQuZ2l0O2E9Y29tbWl0O2g9ODAzNmU3ZWJi
NTNmYzgxMjVlOTg1ZWY0ZTIzODk3MGFlYWFhZWQxOAoKT24gVGh1LCAzMCBBcHIgMjAyMCBhdCAw
MToyMSwgQmVuIEdyZWVhciA8Z3JlZWFyYkBjYW5kZWxhdGVjaC5jb20+IHdyb3RlOgo+Cj4gSGVs
bG8sCj4KPiBQZXRyIGFkZGVkIGEgZml4IGZvciBzcHVyaW91cyBzcGxhdCB0aGF0IGhhcyBib3Ro
ZXJlZCBwZW9wbGUgZm9yIGEgd2hpbGUuCj4gQW5kLCBJIGFkZGVkIGEgcGF0Y2ggdGhhdCB0aHJv
dHRsZXMgdGhlIHdha2UtcXVldWUgbG9naWMuICBUaGlzIHNpZ25pZmljYW50bHkKPiBoZWxwcyBD
UFUgdXNhZ2UgaW4gY2VydGFpbiBoaWdoLXRocm91Z2hwdXQgdGVzdCBjYXNlcy4KPgo+IElmIHNv
bWVvbmUgY291bGQgdXBkYXRlIE9wZW5XcnQgdG8gcHVsbCB0aGUgbGF0ZXN0LCBJJ2QgYXBwcmVj
aWF0ZSBpdC4KPgo+IGNvbW1pdCAzNjM3YmU2ZjZiYWY5OWU4NWE3ZjBiMjdmODBhOTlhMmYyYTVm
NzhkCj4KPiBHaXQgY29tbWl0IElEcyBhbmQgcmVjZW50IGNoYW5nZSBsb2dzIGFyZSBiZWxvdy4K
Pgo+IFRoYW5rcywKPiBCZW4KPgo+Cj4gW2dyZWVhcmJAYmVuLWR0NCBhdGgxMGstY3RdJCBnaXQg
bG9nCj4gY29tbWl0IDM2MzdiZTZmNmJhZjk5ZTg1YTdmMGIyN2Y4MGE5OWEyZjJhNWY3OGQgKEhF
QUQgLT4gbWFzdGVyLCBvcmlnaW4vbWFzdGVyKQo+IEF1dGhvcjogQmVuIEdyZWVhciA8Z3JlZWFy
YkBjYW5kZWxhdGVjaC5jb20+Cj4gRGF0ZTogICBXZWQgQXByIDI5IDA4OjMwOjM5IDIwMjAgLTA3
MDAKPgo+ICAgICAgYXRoMTBrLWN0OiAgQWRkIFBldHIgU3RldGlhcidzIHNwbGF0LWZpeGluZyBw
YXRjaC4KPgo+ICAgICAgQW5kIGZvciA1LjQsIGFkZCB0eC1xdWV1ZS13YWtlIHRocm90dGxpbmcg
cGF0Y2guCj4KPiBjb21taXQgYWU2MDBkNjRmZTk5MzBkNTM5N2U3MTk0ZjliM2ViNmJmNjQ0NzRm
OQo+IE1lcmdlOiA1ZWY2ZmQ1IGMxYjZmYTYKPiBBdXRob3I6IEJlbiBHcmVlYXIgPGdyZWVhcmJA
Y2FuZGVsYXRlY2guY29tPgo+IERhdGU6ICAgV2VkIEFwciAyOSAwNzo1NDoyMyAyMDIwIC0wNzAw
Cj4KPiAgICAgIE1lcmdlIHB1bGwgcmVxdWVzdCAjMTI5IGZyb20geW5lenovdXBzdHJlYW0vd29y
a2Fyb3VuZC1pbnZhbGlkLXR4LXJhdGUKPgo+ICAgICAgYXRoMTBrLWN0OiB3b3JrYXJvdW5kIFRY
IHJhdGUgY29kZSBmaXJtd2FyZSBidWcKPgo+IGNvbW1pdCBjMWI2ZmE2NDc1YTQxNDFkMjdlYjQ4
MWU1MDgxOTZhODYyYzJkNjRkCj4gQXV0aG9yOiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6
Pgo+IERhdGU6ICAgVHVlIEFwciAyOCAxOTo1ODo1NCAyMDIwICswMjAwCj4KPiAgICAgIGF0aDEw
ay1jdDogd29ya2Fyb3VuZCBUWCByYXRlIGNvZGUgZmlybXdhcmUgYnVnCj4KPiAgICAgIEl0IHNl
ZW1zLCB0aGF0IHdlIGdldCBhIGJhZCB0eC9yeCByYXRlIGZyb20gZmlybXdhcmUsIGl0IGlzIG5v
dCBhIHJlYWwKPiAgICAgIHByb2JsZW0gc28ganVzdCBjaGVjayBmb3IgaW52YWxpZCByYXRlICgw
eGZmKSBhbmQgZm9yY2UgaXQgdG8gYmUgemVybwo+ICAgICAgaW5zdGVhZC4KPgo+ICAgICAgRml4
ZXM6ICMxMTcKPiAgICAgIFJlZjogaHR0cHM6Ly9idWdzLm9wZW53cnQub3JnL2luZGV4LnBocD9k
bz1kZXRhaWxzJnRhc2tfaWQ9MzA1NQo+ICAgICAgU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlh
ciA8eW5lenpAdHJ1ZS5jej4KPgo+IC0tCj4gQmVuIEdyZWVhciA8Z3JlZWFyYkBjYW5kZWxhdGVj
aC5jb20+Cj4gQ2FuZGVsYSBUZWNobm9sb2dpZXMgSW5jICBodHRwOi8vd3d3LmNhbmRlbGF0ZWNo
LmNvbQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Blbndy
dC1kZXZlbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
b3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9y
ZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZl
bAo=

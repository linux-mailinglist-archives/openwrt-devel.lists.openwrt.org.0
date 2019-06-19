Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 694304B6EC
	for <lists+openwrt-devel@lfdr.de>; Wed, 19 Jun 2019 13:20:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xfFv12df6S2PYUF8seT1cersBEelsKH45G7yC1PGsKY=; b=qmjAdvjNWYZEzm
	5W2kGqZyMyMpAWvySqEeim+CEYJwXcR2bPMOR5LJ4W5STitPSHNn84jo90ibM+SW7WjaadoZY0Uyt
	fS3y3ie8mjj6Di/R67Z134GEfAglFlMr/js+KdniCxqJ63q+za3OIc656kEiunFrZaZdeFz31xf5Z
	SzVVxvqpypIajNqfES8CJo/PE7YrEPCZnTma7jfDv8zfxU4cNdUNs8RHZPTc27q/QbGiHACd/IpqE
	nQ3+nLtDxYWVPb392FL48Kd0kXoHVqChm9Q0b7LEGA9E8rq12YhdJ34VMP0tApV4zjxlp3zLsxwlv
	9Io+Q8ebQpCOsrvzL1gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdYdd-00058J-Cp; Wed, 19 Jun 2019 11:20:25 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdYdW-00057z-La
 for openwrt-devel@lists.openwrt.org; Wed, 19 Jun 2019 11:20:20 +0000
Received: by mail-lj1-x242.google.com with SMTP id v18so2860000ljh.6
 for <openwrt-devel@lists.openwrt.org>; Wed, 19 Jun 2019 04:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=PxzExPv1lvQ+PyQK6HRGETbU+s7Xmop7VEiS6GaFb2g=;
 b=pO/IxFLC/SKDtDzixST8nKVTNKMn1c1l/6niBllMsgVXHcsVyzXbSJ/yqSANWuROQ/
 ZMC9xBI9cdBvR2//89q2N2vq0NNFZoC7TmkoDgpdix0XeVXisq0xlAF6Qr1DUyb5ryd2
 fxHzCpohEC1Lns7QPq0RCvWwz/K51IBFIawmQPldFCmjpjvZQiSRZdEQSP5ATa5Qj8Bn
 nyKeKKzDdfZB+YoR8+qfcRjhPdVDTgjcvXdWvFSGhPbayyXdR3F29VNeFAKuqv+OoZuS
 pS4LHJxpKEzikuGu8sUtME+IVa/XKdAIXx78zFpqKGztXBRmPCPwkGy1JIcmNO9UaAnY
 jkIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=PxzExPv1lvQ+PyQK6HRGETbU+s7Xmop7VEiS6GaFb2g=;
 b=UBMDGQ7F1TX1EZ1U5pjz0RhThNR+2XCeRTqirX0B23+aSFe1UBC698Z2SQEoB/weZ+
 pwmiftMgkHIj2OoxWAza1JvIcHlkn3l6vfdNXL9jvTeBYjxztHDHBA0ZOA5rlbOLvkWx
 st45xYoQ2211kSKlsDtd3Ce3T5lb5olmmZei8w8v+qoPqGm3qJb+9J+0HIsA6DLPQ+EQ
 HxxJ/GZM+cI2euTFYBJAT8Uj10YODMVI9Jqa4YYHvP5sjFHehE7PHLLx5jmYR1zeqZYo
 JZLMDY4gAZG8KjMl0kP1fkENf3fuyFz8/IlmKDgvO+p3d1PzrOGvbN9/Bi0KBpZlyx+S
 SqAA==
X-Gm-Message-State: APjAAAWN0YW0O594o/WxhWRA9mwLJs6WJxU1WJIPRuDsrTC5TwFH1Vbu
 MZdiFbmPjym4TiFmP8yXDyYuyQNanGUkdP6SaitgKmH0bvM=
X-Google-Smtp-Source: APXvYqzQFiH3b4XpvKKUVC1o1oaoVm8hh70P/GN7/eychQSSIvgEWCsfsMdhDzBSlcIOURICjBX46RaJpmA0jwxZ2Ns=
X-Received: by 2002:a2e:9c19:: with SMTP id s25mr45736735lji.188.1560943215427; 
 Wed, 19 Jun 2019 04:20:15 -0700 (PDT)
MIME-Version: 1.0
References: <1560802136-4157-1-git-send-email-ynezz@true.cz>
 <1560802136-4157-3-git-send-email-ynezz@true.cz>
In-Reply-To: <1560802136-4157-3-git-send-email-ynezz@true.cz>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Wed, 19 Jun 2019 19:31:09 +0800
Message-ID: <CAECwjAhGcn-aR88gAX9V9L9YgO84W35ZHmxkhv8wD6f_VQ2EfA@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_042018_734220_DE1BA72A 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 2/6] scripts/dl_github_archive.py:
 convert to Python 3 with 2-to-3
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

T24gVHVlLCAxOCBKdW4gMjAxOSBhdCAwNDowOSwgUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5j
ej4gd3JvdGU6Cj4KPiBMZXQncyBjb252ZXJ0IHRoZSBzY3JpcHQgdG8gUHl0aG9uIDMuCj4KPiBT
aWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6Pgo+IC0tLQo+ICBzY3Jp
cHRzL2RsX2dpdGh1Yl9hcmNoaXZlLnB5IHwgMTAgKysrKystLS0tLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL3Njcmlw
dHMvZGxfZ2l0aHViX2FyY2hpdmUucHkgYi9zY3JpcHRzL2RsX2dpdGh1Yl9hcmNoaXZlLnB5Cj4g
aW5kZXggNGJiN2QxMzFiYjgzLi4zZDFlMDdlNWM1NTEgMTAwNzU1Cj4gLS0tIGEvc2NyaXB0cy9k
bF9naXRodWJfYXJjaGl2ZS5weQo+ICsrKyBiL3NjcmlwdHMvZGxfZ2l0aHViX2FyY2hpdmUucHkK
PiBAQCAtMSw0ICsxLDQgQEAKPiAtIyEvdXNyL2Jpbi9lbnYgcHl0aG9uCj4gKyMhL3Vzci9iaW4v
ZW52IHB5dGhvbjMKPiAgIwo+ICAjIENvcHlyaWdodCAoYykgMjAxOCBZb3Vzb25nIFpob3UgPHlz
emhvdTR0ZWNoQGdtYWlsLmNvbT4KPiAgIwo+IEBAIC0yMCw3ICsyMCw3IEBAIGltcG9ydCBzc2wK
PiAgaW1wb3J0IHN1YnByb2Nlc3MKPiAgaW1wb3J0IHN5cwo+ICBpbXBvcnQgdGltZQo+IC1pbXBv
cnQgdXJsbGliMgo+ICtpbXBvcnQgdXJsbGliLnJlcXVlc3QsIHVybGxpYi5lcnJvciwgdXJsbGli
LnBhcnNlCgpPbmx5IHVybGxpYi5yZXF1ZXN0IG5lZWRzIHRvIGJlIGltcG9ydGVkLgoKPgo+ICBU
TVBESVIgPSBvcy5lbnZpcm9uLmdldCgnVE1QX0RJUicpIG9yICcvdG1wJwo+ICBUTVBESVJfREwg
PSBvcy5wYXRoLmpvaW4oVE1QRElSLCAnZGwnKQo+IEBAIC0xOTQsNyArMTk0LDcgQEAgY2xhc3Mg
R2l0SHViQ29tbWl0VHNDYWNoZShvYmplY3QpOgo+ICAgICAgICAgICAgICBzZWxmLmNhY2hlW2td
ID0gKHRzLCB1cGRhdGVkKQo+Cj4gICAgICBkZWYgX2NhY2hlX2ZsdXNoKHNlbGYsIGZvdXQpOgo+
IC0gICAgICAgIGNhY2hlID0gc29ydGVkKHNlbGYuY2FjaGUuaXRlcml0ZW1zKCksIGNtcD1sYW1i
ZGEgYSwgYjogYlsxXVsxXSAtIGFbMV1bMV0pCj4gKyAgICAgICAgY2FjaGUgPSBzb3J0ZWQoaXRl
cihzZWxmLmNhY2hlLml0ZW1zKCkpLCBjbXA9bGFtYmRhIGEsIGI6IGJbMV1bMV0gLSBhWzFdWzFd
KQoKUHl0aG9uMyBzb3J0ZWQgZnVuY3Rpb24gY2hhbmdlZCBpdHMgcHJvdG90eXBlLiAgVGhpcyBu
ZWVkcyB0byBiZQoKY2FjaGUgPSBzb3J0ZWQoc2VsZi5jYWNoZS5pdGVtcygpLCBrZXk9bGFtYmRh
IGE6IGFbMV1bMV0pCgpSZWdhcmRzLAogICAgICAgIHlvdXNvbmcKCj4gICAgICAgICAgY2FjaGUg
PSBjYWNoZVs6c2VsZi5fX2NhY2hlbl0KPiAgICAgICAgICBzZWxmLmNhY2hlID0ge30KPiAgICAg
ICAgICBvcy5mdHJ1bmNhdGUoZm91dC5maWxlbm8oKSwgMCkKPiBAQCAtMzk3LDkgKzM5Nyw5IEBA
IGNsYXNzIERvd25sb2FkR2l0SHViVGFyYmFsbChvYmplY3QpOgo+ICAgICAgICAgICAgICAnQWNj
ZXB0JzogJ2FwcGxpY2F0aW9uL3ZuZC5naXRodWIudjMranNvbicsCj4gICAgICAgICAgICAgICdV
c2VyLUFnZW50JzogJ09wZW5XcnQnLAo+ICAgICAgICAgIH0KPiAtICAgICAgICByZXEgPSB1cmxs
aWIyLlJlcXVlc3QodXJsLCBoZWFkZXJzPWhlYWRlcnMpCj4gKyAgICAgICAgcmVxID0gdXJsbGli
LnJlcXVlc3QuUmVxdWVzdCh1cmwsIGhlYWRlcnM9aGVhZGVycykKPiAgICAgICAgICBzc2xjb250
ZXh0ID0gc3NsLl9jcmVhdGVfdW52ZXJpZmllZF9jb250ZXh0KCkKPiAtICAgICAgICBmaWxlb2Jq
ID0gdXJsbGliMi51cmxvcGVuKHJlcSwgY29udGV4dD1zc2xjb250ZXh0KQo+ICsgICAgICAgIGZp
bGVvYmogPSB1cmxsaWIucmVxdWVzdC51cmxvcGVuKHJlcSwgY29udGV4dD1zc2xjb250ZXh0KQo+
ICAgICAgICAgIHJldHVybiBmaWxlb2JqCj4KPiAgICAgIGRlZiBfZXJyb3Ioc2VsZiwgbXNnKToK
PiAtLQo+IDEuOS4xCj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVsQGxp
c3RzLm9wZW53cnQub3JnCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL29wZW53cnQtZGV2ZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMu
b3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29w
ZW53cnQtZGV2ZWwK

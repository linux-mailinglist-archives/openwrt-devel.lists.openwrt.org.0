Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B43D7177A
	for <lists+openwrt-devel@lfdr.de>; Tue, 23 Jul 2019 13:52:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VIH4kQCcketRNFbk8AgWdKipqrgLqXmnLcu7bcsAoto=; b=MJPHtmQlvie4dr
	OVzt3XnFbnt/7X1nEfbF8SyjqQUN/7UTYQm8KES5slAm6I7oQ/M/TUZXxyCkt52omIytKhgFFGGsx
	ZOnYIJwFrKPpd1kUy8nQYFcUliUIRnItBf5Q6IShApnpwviwplCp8hAhCNGCuZlXGkf3PnBdAEfmO
	10QV90IDXqFH0peCll9siL4EYXkblRSK7GJw9h4pbKV3NeKoFx9vN/fS0ky3iZiUravBk/WbRe/KP
	RHMDO8i2sz/54rqHnoXkWG4WgqcchBbchNib0oIbjxolWn10zWS/m+5vxWBz5Lk0wyJe4la0L3+Ul
	HFDi5omgvww+6v/7EYig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hptKp-0006AI-9t; Tue, 23 Jul 2019 11:51:59 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hptKd-00069j-Ce
 for openwrt-devel@lists.openwrt.org; Tue, 23 Jul 2019 11:51:48 +0000
Received: by mail-lj1-x242.google.com with SMTP id r9so40741819ljg.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 23 Jul 2019 04:51:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=6p2kV3b4l/OBOGo08p243K71HcPybz62wMi2Gz/br+I=;
 b=IzutKUu4iTJCkWcnofxnQX6l1e5LUXQGP+vjBeRaezeRZR7AvJ0EbiyySUF7F+t0yC
 fu+AQZULmoMLGn9CS4976R/EK4m1MHp3CZTOTPxJNc1UwJzRAQ0lyBknNkKENf81fcIl
 KImR/S0rbu/YW0Jk406lP8OlC+O3PKdmn3HU1G1/jNR6Msx49r1A5y0yowqTedUrCzR2
 v2aO/8iWV2jtEjePrxZsI32NgZzKxTypBQK1iQ4iRq3hYFZevim0hzBtQmVUXkCZlYQ1
 dJTxKT+oMRhK/oYmeS/t1R+1uL8w++/qfL2JhvVt0oXjNQK3LLAYfG0vUKxwcLUi7Orw
 Grqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=6p2kV3b4l/OBOGo08p243K71HcPybz62wMi2Gz/br+I=;
 b=QwocZETHexooL5jafrSx1HoiXy6/CpPy0wMSk7sYTacp30S2TbLLpMg31/rLtKar3j
 Nm0xo1UQxVDljuSbIlz18iVW+yy29/v50FJLofY1MJ2jNfDmABRYpSIQOYxzi0sMNyyS
 FSj+SBUBDffL47uCAbgAvL+e4d5VzZ/H7lGClAt/LglN0a+zwUVrESiFwPBvb3qg4Ref
 /dX5hmddVg8VdwS+/q4ipYoNw4qt2RRY56dUXZGZyKeONmohn0pmSLQwvV7mRocOEEML
 SejA86aaQocfVli7Kf24/UMQ5pcW9wR8dtJgQPoZEiie6EUEqOiqSLjM01VfTcEIhjPd
 WFKg==
X-Gm-Message-State: APjAAAV3eekJF0hT97qBMHU+HXJeFtIE0iRUap4rQgoP2hr3hBQAdIJa
 nhVu/CgWV8dQv5em7D8mCkfHdMeLtKkpag8hHVY=
X-Google-Smtp-Source: APXvYqwVnJo+Xm+AhMO2UJwBwxetSvj2ItGTDbzi+sAjsq9Q76ENx9uqkvKXU9kc0sTh02GCMbhYslIYrb6Zb8j2kPU=
X-Received: by 2002:a2e:9b83:: with SMTP id z3mr11842725lji.84.1563882705585; 
 Tue, 23 Jul 2019 04:51:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190723102452.30621-1-ynezz@true.cz>
 <20190723102452.30621-2-ynezz@true.cz>
In-Reply-To: <20190723102452.30621-2-ynezz@true.cz>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Tue, 23 Jul 2019 19:51:34 +0800
Message-ID: <CAECwjAgiAgQzOyxcxTGS1-mm4483=SuZqqRGnp-GWD7Whb7WJQ@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_045147_435996_2C26F891 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] netifd, lldpd, rpcd,
 log: use generic service_running
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

T24gVHVlLCAyMyBKdWwgMjAxOSBhdCAxODoyNSwgUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5j
ej4gd3JvdGU6Cj4KPiBjb21taXQgZWIyMDRkMTRmNzVjICgiYmFzZS1maWxlczogaW1wbGVtZW50
IGdlbmVyaWMgc2VydmljZV9ydW5uaW5nIikKPiBpbnRyb2R1Y2VkIGdlbmVyaWMgc2VydmljZV9y
dW5uaW5nIHNvIGl0J3Mgbm90IG5lZWRlZCB0byBjb3B5JnBhc3RlIHNhbWUKPiAzIGxpbmVzIG92
ZXIgYW5kIG92ZXIgYWdhaW4uCj4KPiBTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6
ekB0cnVlLmN6Pgo+IC0tLQo+ICBwYWNrYWdlL25ldHdvcmsvY29uZmlnL25ldGlmZC9maWxlcy9l
dGMvaW5pdC5kL25ldHdvcmsgfCA1IC0tLS0tCj4gIHBhY2thZ2UvbmV0d29yay9zZXJ2aWNlcy9s
bGRwZC9maWxlcy9sbGRwZC5pbml0ICAgICAgICB8IDQgLS0tLQo+ICBwYWNrYWdlL3N5c3RlbS9y
cGNkL2ZpbGVzL3JwY2QuaW5pdCAgICAgICAgICAgICAgICAgICAgfCA0IC0tLS0KPiAgcGFja2Fn
ZS9zeXN0ZW0vdWJveC9maWxlcy9sb2cuaW5pdCAgICAgICAgICAgICAgICAgICAgIHwgNCAtLS0t
Cj4gIDQgZmlsZXMgY2hhbmdlZCwgMTcgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvcGFj
a2FnZS9uZXR3b3JrL2NvbmZpZy9uZXRpZmQvZmlsZXMvZXRjL2luaXQuZC9uZXR3b3JrIGIvcGFj
a2FnZS9uZXR3b3JrL2NvbmZpZy9uZXRpZmQvZmlsZXMvZXRjL2luaXQuZC9uZXR3b3JrCj4gaW5k
ZXggMjMyMWEzMDlhNWNlLi5kYzIwOGM0Y2UwYTEgMTAwNzU1Cj4gLS0tIGEvcGFja2FnZS9uZXR3
b3JrL2NvbmZpZy9uZXRpZmQvZmlsZXMvZXRjL2luaXQuZC9uZXR3b3JrCj4gKysrIGIvcGFja2Fn
ZS9uZXR3b3JrL2NvbmZpZy9uZXRpZmQvZmlsZXMvZXRjL2luaXQuZC9uZXR3b3JrCj4gQEAgLTQw
LDExICs0MCw2IEBAIHN0b3Bfc2VydmljZSgpIHsKPiAgICAgICAgIHNsZWVwIDEKPiAgfQo+Cj4g
LXNlcnZpY2VfcnVubmluZygpIHsKPiAtICAgICAgIHVidXMgLXQgMzAgd2FpdF9mb3IgbmV0d29y
ay5pbnRlcmZhY2UKPiAtICAgICAgIC9zYmluL3dpZmkgcmVsb2FkX2xlZ2FjeQo+IC19Cj4gLQoK
TGlrZWx5IHdlIHNob3VsZCBrZWVwIHRoaXMuICBJZiBub3QsIGEgbm90ZSBpbiB0aGUgY29tbWl0
IG1lc3NhZ2UgY291bGQgaGVscC4KCiAgICAgICAgICAgICAgICB5b3Vzb25nCgo+ICB2YWxpZGF0
ZV9hdG1fYnJpZGdlX3NlY3Rpb24oKQo+ICB7Cj4gICAgICAgICB1Y2lfdmFsaWRhdGVfc2VjdGlv
biBuZXR3b3JrICJhdG0tYnJpZGdlIiAiJHsxfSIgXAo+IGRpZmYgLS1naXQgYS9wYWNrYWdlL25l
dHdvcmsvc2VydmljZXMvbGxkcGQvZmlsZXMvbGxkcGQuaW5pdCBiL3BhY2thZ2UvbmV0d29yay9z
ZXJ2aWNlcy9sbGRwZC9maWxlcy9sbGRwZC5pbml0Cj4gaW5kZXggYmM0MjlkZTQ4NGQzLi45ZmIz
YTgyNTU5OTUgMTAwNjQ0Cj4gLS0tIGEvcGFja2FnZS9uZXR3b3JrL3NlcnZpY2VzL2xsZHBkL2Zp
bGVzL2xsZHBkLmluaXQKPiArKysgYi9wYWNrYWdlL25ldHdvcmsvc2VydmljZXMvbGxkcGQvZmls
ZXMvbGxkcGQuaW5pdAo+IEBAIC05NiwxMCArOTYsNiBAQCBzdGFydF9zZXJ2aWNlKCkgewo+ICAg
ICAgICAgcHJvY2RfY2xvc2VfaW5zdGFuY2UKPiAgfQo+Cj4gLXNlcnZpY2VfcnVubmluZygpIHsK
PiAtICAgICAgIHBncmVwIC14IC91c3Ivc2Jpbi9sbGRwZCAmPiAvZGV2L251bGwKPiAtfQo+IC0K
PiAgcmVsb2FkX3NlcnZpY2UoKSB7Cj4gICAgICAgICBydW5uaW5nIHx8IHJldHVybiAxCj4gICAg
ICAgICAkTExEUENMSSAtdSAkTExEUFNPQ0tFVCAmPiAvZGV2L251bGwgPDwtRU9GCj4gZGlmZiAt
LWdpdCBhL3BhY2thZ2Uvc3lzdGVtL3JwY2QvZmlsZXMvcnBjZC5pbml0IGIvcGFja2FnZS9zeXN0
ZW0vcnBjZC9maWxlcy9ycGNkLmluaXQKPiBpbmRleCA3N2ViY2JlNmNiN2IuLjQ0NzEzM2M2N2E1
YSAxMDA3NTUKPiAtLS0gYS9wYWNrYWdlL3N5c3RlbS9ycGNkL2ZpbGVzL3JwY2QuaW5pdAo+ICsr
KyBiL3BhY2thZ2Uvc3lzdGVtL3JwY2QvZmlsZXMvcnBjZC5pbml0Cj4gQEAgLTE4LDcgKzE4LDMg
QEAgc3RhcnRfc2VydmljZSgpIHsKPiAgcmVsb2FkX3NlcnZpY2UoKSB7Cj4gICAgICAgICBwcm9j
ZF9zZW5kX3NpZ25hbCBycGNkCj4gIH0KPiAtCj4gLXNlcnZpY2VfcnVubmluZygpIHsKPiAtICAg
ICAgIHByb2NkX3J1bm5pbmcgcnBjZAo+IC19Cj4gZGlmZiAtLWdpdCBhL3BhY2thZ2Uvc3lzdGVt
L3Vib3gvZmlsZXMvbG9nLmluaXQgYi9wYWNrYWdlL3N5c3RlbS91Ym94L2ZpbGVzL2xvZy5pbml0
Cj4gaW5kZXggYmE5YzEyNGM4YmE2Li4yNTBmODA1YjQ0MDYgMTAwNjQ0Cj4gLS0tIGEvcGFja2Fn
ZS9zeXN0ZW0vdWJveC9maWxlcy9sb2cuaW5pdAo+ICsrKyBiL3BhY2thZ2Uvc3lzdGVtL3Vib3gv
ZmlsZXMvbG9nLmluaXQKPiBAQCAtOTYsNyArOTYsMyBAQCBzdGFydF9zZXJ2aWNlKCkKPiAgICAg
ICAgIGNvbmZpZ19mb3JlYWNoIHZhbGlkYXRlX2xvZ19zZWN0aW9uIHN5c3RlbSBzdGFydF9zZXJ2
aWNlX2ZpbGUKPiAgICAgICAgIGNvbmZpZ19mb3JlYWNoIHZhbGlkYXRlX2xvZ19zZWN0aW9uIHN5
c3RlbSBzdGFydF9zZXJ2aWNlX3JlbW90ZQo+ICB9Cj4gLQo+IC1zZXJ2aWNlX3J1bm5pbmcoKSB7
Cj4gLSAgICAgICBwcm9jZF9ydW5uaW5nIGxvZwo+IC19Cj4KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0
Cj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+IGh0dHBzOi8vbGlzdHMub3Blbndy
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==

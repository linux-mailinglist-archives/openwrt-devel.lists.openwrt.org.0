Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BFB546FD4
	for <lists+openwrt-devel@lfdr.de>; Sat, 15 Jun 2019 13:44:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XWWQ5eqvZDHk5IY+30aegQkXANGnxe+pcVz9Y9IZPPQ=; b=l+YozIUNmZ8HT8
	QXSY82klUXoZIozsri+pwtl1P4b0GvY00hCRGq7OaEjTG/bownlY5JqwV38hRvh8eZAW3580DDs6E
	qOWHUPcXUC7zHeHPHSA85AcNVbhX4WH+3X3VcfZy4SYYQ6TwNd29kcZklC8DXvUK+Uo0DOiz/VJHB
	41DbN8mPwBLUdVFoXG2SS4l76DBnU7/5KETsrrQpjXb3vdwRrm18s0BuAftASC3jF6WbJ7tYl9N4h
	pYxYpf1ErtJIkW8Hb6Nja35QQkd+mCec31mUTWIHJ1jcZhE6iy8/FHUxgK1R+DVf7FGaQoeW8mvaj
	J8uO2M3GQSre5PyWgdIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc76f-0007gJ-DX; Sat, 15 Jun 2019 11:44:25 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc76Y-0007g0-0r
 for openwrt-devel@lists.openwrt.org; Sat, 15 Jun 2019 11:44:19 +0000
Received: by mail-qt1-x842.google.com with SMTP id d17so611396qtj.8
 for <openwrt-devel@lists.openwrt.org>; Sat, 15 Jun 2019 04:44:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=lHQf8lq02u0AEXNgZQTfn0vEQmY4u+D156spF/6cB54=;
 b=OY1+HQFNlS7VV4dHx5f+b++8J0gd6NlwrwFS11IjVQrL7/jYzM2HHOYjZmOqGbsFQj
 6/b3pdrPGbo6XwSx4QjtAsHX4Hj01cFjV2TPFamDpfe+x/S4xTNMRvplAp51ydoFmDH+
 WUiRL9CuERJFPbfuShfilQ5dvPkdvYd4vxY9uFPg0t4mKkTPM/AoAtdzzEDySX97qKAg
 eQ4sCz+dcpFYdepHcRRyOKd/RkXgnAXfApkuN6R8fsJG0aFjxI8/dkdROBMF/dKQ/vc2
 ZmB6nzIhu5Ia3lIVtOqW+LPBKeHfMiXlMXoz59QVBt0QulY9xmQGtv1RzlVJn6rG8jqy
 /C6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=lHQf8lq02u0AEXNgZQTfn0vEQmY4u+D156spF/6cB54=;
 b=iv1OJIJ/QYkVmLPTMN7DtTdIEwRSMNlfaVO3QrWSbnK8fHhqztIHcR9R8Flkbm87eb
 NCg7LEnnOU0/MVazAK6mhVh0MtqwZkVlmKmBv8sxOlJhGNqIT+tyTlomkWXeWtTh0KNv
 RP+JjT+gF+0SFcJDh6lGnSNFoZd9uD6oGsBJh9qSrhbNxKoZXLM79x4bhkp9H1qr7Hb+
 yLaINq5a65zQ8wmdL6XCvrthveYNI6meTlvUq5Dxljf8EMye4X38sgNfqWXkWUnRPBya
 KM4SWVvclYuz3Dy92YrLGdZAmgpD1suZqZiezEdzxRpDOYIQReWif0PNxAghfpf6obYY
 kB6Q==
X-Gm-Message-State: APjAAAUuFYXwcFpS2Z9tADjkI5sAk1o9Ua5Irh2OXFyi9gwmfDX8KgOX
 SBz7C0YGS5BI0qf9jbOjBVSokV8kq31J35VBwxU=
X-Google-Smtp-Source: APXvYqxfsnrqaqRNJQ4T/dBXbswRjX0oLCwWCxZirDLwoE8OAl4IHZ88erMBUX6gOTYNfgyC2qdG+7/cW7TtN/xRGUE=
X-Received: by 2002:aed:23ac:: with SMTP id j41mr57443179qtc.200.1560599056037; 
 Sat, 15 Jun 2019 04:44:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190614110947.10540-1-avalentin@marcant.net>
 <20190614110947.10540-4-avalentin@marcant.net>
In-Reply-To: <20190614110947.10540-4-avalentin@marcant.net>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Sat, 15 Jun 2019 13:44:04 +0200
Message-ID: <CAJLcKsGR2WcCsy-ehX=C6AoDAzusv82JOkZoFxDuR2hRDLHgmg@mail.gmail.com>
To: =?UTF-8?Q?Andr=C3=A9_Valentin?= <avalentin@marcant.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_044418_064448_0D3F0078 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 2/3] network/config/xfrm: add
 host-dependency for xfrm interface parent
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gRnJpLCBKdW4gMTQsIDIwMTkgYXQgMToxMCBQTSBBbmRyw6kgVmFsZW50aW4gPGF2YWxlbnRp
bkBtYXJjYW50Lm5ldD4gd3JvdGU6Cj4KPiBBZGQgcHJvdG9fYWRkX2hvc3RfZGVwZW5kZW5jeSB0
byBhZGQgYSBkZXBlbmRlbmN5IHRvIHRoZSB0dW5saW5rIGludGVyZmFjZQo+Cj4gU2lnbmVkLW9m
Zi1ieTogQW5kcsOpIFZhbGVudGluIDxhdmFsZW50aW5AbWFyY2FudC5uZXQ+ClBhdGNoIHB1c2hl
ZCB0byBtYXN0ZXI7IHRoeAoKSGFucwo+IC0tLQo+ICBwYWNrYWdlL25ldHdvcmsvY29uZmlnL3hm
cm0vZmlsZXMveGZybS5zaCB8IDE5ICsrKysrKysrKysrLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDExIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvcGFj
a2FnZS9uZXR3b3JrL2NvbmZpZy94ZnJtL2ZpbGVzL3hmcm0uc2ggYi9wYWNrYWdlL25ldHdvcmsv
Y29uZmlnL3hmcm0vZmlsZXMveGZybS5zaAo+IGluZGV4IGRmMjhkMzg2MTMuLjQ3MTFiZjJmNTUg
MTAwNzU1Cj4gLS0tIGEvcGFja2FnZS9uZXR3b3JrL2NvbmZpZy94ZnJtL2ZpbGVzL3hmcm0uc2gK
PiArKysgYi9wYWNrYWdlL25ldHdvcmsvY29uZmlnL3hmcm0vZmlsZXMveGZybS5zaAo+IEBAIC0x
NCwyNCArMTQsMjcgQEAgcHJvdG9feGZybV9zZXR1cCgpIHsKPiAgICAgICAgIGxvY2FsIHR1bmxp
bmsgaWZpZCBtdHUgem9uZQo+ICAgICAgICAganNvbl9nZXRfdmFycyB0dW5saW5rIGlmaWQgbXR1
IHpvbmUKPgo+IC0gICAgICAgcHJvdG9faW5pdF91cGRhdGUgIiRjZmciIDEKPiAtCj4gLSAgICAg
ICBwcm90b19hZGRfdHVubmVsCj4gLSAgICAgICBqc29uX2FkZF9zdHJpbmcgbW9kZSAiJG1vZGUi
Cj4gLSAgICAgICBqc29uX2FkZF9pbnQgbXR1ICIke210dTotMTI4MH0iCj4gLQo+ICAgICAgICAg
WyAteiAiJHR1bmxpbmsiIF0gJiYgewo+ICAgICAgICAgICAgICAgICBwcm90b19ub3RpZnlfZXJy
b3IgIiRjZmciIE5PX1RVTkxJTksKPiAgICAgICAgICAgICAgICAgcHJvdG9fYmxvY2tfcmVzdGFy
dCAiJGNmZyIKPiAgICAgICAgICAgICAgICAgZXhpdAo+ICAgICAgICAgfQo+IC0gICAgICAganNv
bl9hZGRfc3RyaW5nIGxpbmsgIiR0dW5saW5rIgo+IC0KPiAgICAgICAgIFsgLXogIiRpZmlkIiBd
ICYmIHsKPiAgICAgICAgICAgICAgICAgcHJvdG9fbm90aWZ5X2Vycm9yICIkY2ZnIiBOT19JRklE
Cj4gICAgICAgICAgICAgICAgIHByb3RvX2Jsb2NrX3Jlc3RhcnQgIiRjZmciCj4gICAgICAgICAg
ICAgICAgIGV4aXQKPiAgICAgICAgIH0KPiArCj4gKyAgICAgICAoIHByb3RvX2FkZF9ob3N0X2Rl
cGVuZGVuY3kgIiRjZmciICcnICIkdHVubGluayIgKQo+ICsKPiArICAgICAgIHByb3RvX2luaXRf
dXBkYXRlICIkY2ZnIiAxCj4gKwo+ICsgICAgICAgcHJvdG9fYWRkX3R1bm5lbAo+ICsgICAgICAg
anNvbl9hZGRfc3RyaW5nIG1vZGUgIiRtb2RlIgo+ICsgICAgICAganNvbl9hZGRfaW50IG10dSAi
JHttdHU6LTEyODB9Igo+ICsKPiArICAgICAgIGpzb25fYWRkX3N0cmluZyBsaW5rICIkdHVubGlu
ayIKPiArCj4gICAgICAgICBqc29uX2FkZF9vYmplY3QgJ2RhdGEnCj4gICAgICAgICBbIC1uICIk
aWZpZCIgXSAmJiBqc29uX2FkZF9pbnQgaWZpZCAiJGlmaWQiCj4gICAgICAgICBqc29uX2Nsb3Nl
X29iamVjdAo+IC0tCj4gMi4xMS4wCj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVud3J0
LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2
ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL29wZW53cnQtZGV2ZWwK

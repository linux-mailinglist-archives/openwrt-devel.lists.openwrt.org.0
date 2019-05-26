Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0482A9E1
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 May 2019 15:35:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nF0hjkBlB1KKn0wJsP1kRByZEIysr2igZ5FGW3/EiVE=; b=kMKSzBsp+WIHJdY8Wlfy4j+bLE
	XR+Rx7GJDvK+vl07b3bezpZP5PYUumiao/QJ3M1JtBMYdjiij9j4ueDLXedPVdrS5TvRnvds8bpN4
	9I/Zr2CfGfPSJ/dOSkr7MSwj7C65lN0d9YHC1zR3ipFd/ySmhLeWW5KJqV0PJYXtnvpWoUKShLtho
	vJ1V7a+PDLjoyUXh4RoKXT9IpPZ7CytlOmJwlZF5Kf4YB/SSjBbkmfZe8sTImrKZDp3twBKUFou0J
	hTT8i20sOV54Y4z+60OttMfdr8u9etAvYg7/v8FiatjkdCTA1nYivT5rb0GflMEDiwf/PMTm7gyCL
	vM6O+eaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUtJ6-0000WA-Kv; Sun, 26 May 2019 13:35:24 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUtIx-0000Vm-RU
 for openwrt-devel@lists.openwrt.org; Sun, 26 May 2019 13:35:17 +0000
Received: by mail-lj1-x243.google.com with SMTP id z1so6939870ljb.3
 for <openwrt-devel@lists.openwrt.org>; Sun, 26 May 2019 06:35:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=XGJfLIeg5pAccCEdRKJTJcaGC5IHXVb7n0Il3mI2pJI=;
 b=X8pWKpOAJcQtepg/QwB+Xdrd82uzQ+z+CrTFhjvE+ik/l4PpeHZeJXsm6Mb+UR0pYb
 Puxsv29OzFGnZarrnWI1WUaYIeqpy1QwnvytSv5y4OpFrmd7dXZe8rcmD4lbDUFtBPgZ
 Yz3CSlmDv7xlDXEf61sRXWcwZQZQgYryT/RPxlldNYWMtUDZGSrGhE+NX9u2dOvOyFRP
 ZuMgeWqQAeJF6Ey2yFUENTzhEFbLZNCtL9lsqh2VWrnzxwVQ1PjiP+xXj6Ila9xi1fqL
 1RDc/QobO3hWG7I8Ng5aWp3PCHYrRBRzGqHebOpqLJePrYl8PQu0XduvLjZ1xsd48z6I
 8Q5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XGJfLIeg5pAccCEdRKJTJcaGC5IHXVb7n0Il3mI2pJI=;
 b=kayr0RhoxzrZj6JwnA6rkWL9Qa7/R4ROo+JDQo6rraB7Bej03WceOmuIXUG+co97sC
 BAKWzlDgsSxnNevhAHSPK2LyEX2s9kE5PkgkZgtJxkDQJQGypACu28zeOVTRMCgvON7f
 dUNW5/yNWKI+wHV36KZtGy7xU33BfaJD8caEZ3FhjXxvNl8DuG/znyY1rGNzzKO2dE92
 tcldeqIBsEe53Zm1xtFPieNPUa0/QXKbpUI+f/JZQYFr4fQsB1ss3LcgF4VFkmO7qDFr
 aoYJF1+b8za+Fl7VvE39gIY8ytoAopS1okiPw4U7UUIwZKTpIJjsFf40M281/+N9qUzF
 ynDQ==
X-Gm-Message-State: APjAAAWEiFISAlD7oPNSV4Eb7x6T4IYRFQSS/WqOMpTQQJnRb8cSjJ8c
 jvQBVIdEiII2a+t6aZEvry2dUn8Z
X-Google-Smtp-Source: APXvYqzv3nnvknaTbrsk30+9Sgsgo65AiyILBtjg5B6wnXdC4iPHlCa6cp4Y4y9Xh/GD7VZyvWfhSw==
X-Received: by 2002:a2e:9f44:: with SMTP id v4mr5848538ljk.85.1558877712714;
 Sun, 26 May 2019 06:35:12 -0700 (PDT)
Received: from samsung (095160102144.warszawa.vectranet.pl. [95.160.102.144])
 by smtp.gmail.com with ESMTPSA id
 e6sm1674803ljg.65.2019.05.26.06.35.11
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 26 May 2019 06:35:11 -0700 (PDT)
Date: Sun, 26 May 2019 15:35:10 +0200
From: Cezary Jackiewicz <cezary.jackiewicz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20190526153510.6ca9cb4a@samsung>
In-Reply-To: <03add529-c9ba-6cfe-3ce4-9d209239d675@birger-koblitz.de>
References: <03add529-c9ba-6cfe-3ce4-9d209239d675@birger-koblitz.de>
X-Mailer: Claws Mail 3.16.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_063515_919664_ECFD9180 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cezary.jackiewicz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] Support for Edimax EW-7476RPC
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RG5pYSAyMDE5LTA1LTI2LCBvIGdvZHouIDA5OjQ0OjU5CkJpcmdlciBLb2JsaXR6IDxtYWlsQGJp
cmdlci1rb2JsaXR6LmRlPiBuYXBpc2HFgihhKToKCkhpLAp5ZXMsIGl0IHdvcmtzLCBidXQgc2Vl
IG15IGNvbW1lbnRzLiAKVGhpcyBpcyBhbG1vc3QgaWRlbnRpY2FsIGRldmljZSAoRVctNzQ3NlJQ
QyBhbmQgRVctNzQ3OEMsIGFsc286IFJFMTEsIFJFMTFTKSwKc28geW91IGNhbiB1c2UgZHRzaSB0
byBzaGFyZSBjb21tb24gY29kZS4gCgo+ICDCoMKgwqDCoMKgwqDCoCB3bmNlMjAwMXxcCj4gIMKg
wqDCoMKgwqDCoMKgIHpidC1jcGUxMDJ8XAo+ICDCoMKgwqDCoMKgwqDCoCB6b3JsaWssemw1OTAw
djJ8XAo+ICvCoMKgwqDCoMKgwqAgZWRpbWF4LGV3LTc0NzZycGN8XAo+ICvCoMKgwqDCoMKgwqAg
ZWRpbWF4LGV3LTc0NzhhY3xcCj4gIMKgwqDCoMKgwqDCoMKgIHp0ZS1xNykKCkFscGhhYmV0aWNh
bCBvcmRlci4uLgoKCj4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9ncGlvL2dwaW8uaD4KPiArI2lu
Y2x1ZGUgPGR0LWJpbmRpbmdzL2lucHV0L2lucHV0Lmg+Cj4gKwo+ICsvIHsKPiArwqDCoMKgwqDC
oMKgIGNvbXBhdGlibGUgPSAiZWRpbWF4LGV3LTc0NzZhYyIsICJyYWxpbmssbXQ3NjIwYS1zb2Mi
OwoKZWRpbWF4LGV3LTc0NzhhYwoKPiArwqDCoMKgwqDCoMKgIGtleXMgewo+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJsZSA9ICJncGlvLWtleXMiOwo+ICsKPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlc2V0X3dwcyB7Cj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbGFiZWwgPSAicmVzZXRfd3BzIjsKPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBncGlvcyA9IDwm
Z3BpbzIgMjAgR1BJT19BQ1RJVkVfTE9XPjsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBsaW51eCxjb2RlID0gPEtFWV9SRVNUQVJUPjsKPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07CgpUaGVyZSBpcyBhbHNvIGEgc3dpdGNoCgoJCXN3
aXRjaF9oaWdoIHsKCQkJbGFiZWwgPSAic3dpdGNoIGhpZ2giOwoJCQlncGlvcyA9IDwmZ3BpbzIg
MjIgR1BJT19BQ1RJVkVfTE9XPjsKCQkJbGludXgsY29kZSA9IDxCVE5fMD47CgkJCWxpbnV4LGlu
cHV0LXR5cGUgPSA8RVZfU1c+OwoJCX07CgoJCXN3aXRjaF9vZmYgewoJCQlsYWJlbCA9ICJzd2l0
Y2ggb2ZmIjsKCQkJZ3Bpb3MgPSA8JmdwaW8yIDIzIEdQSU9fQUNUSVZFX0xPVz47CgkJCWxpbnV4
LGNvZGUgPSA8QlROXzE+OwoJCQlsaW51eCxpbnB1dC10eXBlID0gPEVWX1NXPjsKCQl9OwoKCj4g
K8KgwqDCoMKgwqDCoCB9Owo+ICsKPiArwqDCoMKgwqDCoMKgIGxlZHMgewo+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAiZ3Bpby1sZWRzIjsKPiArCj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbGVkX3Bvd2VyOiBwb3dlciB7Cj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxhYmVsID0gImV3LTc0NzhhYzpncmVl
bjpwb3dlciI7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGdwaW9zID0gPCZncGlvMiAyNyBHUElPX0FDVElWRV9MT1c+Owo+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIH07Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZXJuZXQg
ewo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBsYWJlbCA9
ICJldy03NDc4YWM6Z3JlZW46aW50ZXJuZXQiOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBncGlvcyA9IDwmZ3BpbzIgMjYgR1BJT19BQ1RJVkVfTE9XPjsK
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9OwoKbGFuLCBub3QgaW50ZXJuZXQuCgrC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxhbiB7CsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxhYmVsID0gImV3LTc0NzhhYzpncmVlbjpsYW4iOwrCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBncGlvcyA9IDwmZ3BpbzIg
MjYgR1BJT19BQ1RJVkVfTE9XPjsKwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKCj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgd2xhbjJnIHsKPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbGFiZWwgPSAiZXctNzQ3OGFjOmJsdWU6d2xhbjJn
IjsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ3Bpb3Mg
PSA8JmdwaW8yIDMwIEdQSU9fQUNUSVZFX0xPVz47Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxpbnV4LGRlZmF1bHQtdHJpZ2dlciA9ICJwaHkxdHB0IjsK
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHdsYW41ZyB7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGxhYmVsID0gImV3LTc0NzhhYzpibHVlOndsYW41ZyI7Cj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdwaW9zID0gPCZncGlvMiAzMSBHUElP
X0FDVElWRV9MT1c+Owo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBsaW51eCxkZWZhdWx0LXRyaWdnZXIgPSAicGh5MHRwdCI7Cj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgfTsKCkFuZCB0aGVyZSBpcyBtb3JlIGxlZDogCgoJCXdwcyB7CgkJCWxh
YmVsID0gImV3LTc0NzhhYzpncmVlbjp3cHMiOwoJCQlncGlvcyA9IDwmZ3BpbzIgMjggR1BJT19B
Q1RJVkVfTE9XPjsKCQl9OwoKCQljcm9zc2JhbmQgewoJCQlsYWJlbCA9ICJldy03NDc4YWM6Z3Jl
ZW46Y3Jvc3NiYW5kIjsKCQkJZ3Bpb3MgPSA8JmdwaW8yIDI5IEdQSU9fQUNUSVZFX0xPVz47CgkJ
fTsKCj4gKyZlaGNpIHsKPiArwqDCoMKgwqDCoMKgIHN0YXR1cyA9ICJva2F5IjsKPiArfTsKPiAr
Cj4gKyZvaGNpIHsKPiArwqDCoMKgwqDCoMKgIHN0YXR1cyA9ICJva2F5IjsKPiArfTsKCkRyb3Ag
dGhpcy4gTm8gdXNiLgoKPiArZGVmaW5lIERldmljZS9lZGltYXhfZXctNzQ3OGFjCj4gK8KgIERU
UyA6PSBFVy03NDc4QUMKPiArwqAgREVWSUNFX1RJVExFIDo9IEVkaW1heCBFVy03NDc4QUMKPiAr
wqAgQkxPQ0tTSVpFIDo9IDY0awoKQkxPQ0tTSVpFIDo9IDRrCgpTZWUgZXJhc2VzaXplOgoKcm9v
dEBPcGVuV3J0On4jIGNhdCAvcHJvYy9tdGQgCmRldjogICAgc2l6ZSAgIGVyYXNlc2l6ZSAgbmFt
ZQptdGQwOiAwMDAzMDAwMCAwMDAwMTAwMCAidS1ib290IgptdGQxOiAwMDAxMDAwMCAwMDAwMTAw
MCAidS1ib290LWVudiIKbXRkMjogMDAwMTAwMDAgMDAwMDEwMDAgImZhY3RvcnkiCm10ZDM6IDAw
MDIwMDAwIDAwMDAxMDAwICJjaW1hZ2UiCm10ZDQ6IDAwNzkwMDAwIDAwMDAxMDAwICJmaXJtd2Fy
ZSIKbXRkNTogMDAxODJlZjMgMDAwMDEwMDAgImtlcm5lbCIKbXRkNjogMDA2MGQxMGQgMDAwMDEw
MDAgInJvb3RmcyIKbXRkNzogMDA0MWEwMDAgMDAwMDEwMDAgInJvb3Rmc19kYXRhIgoKCgotLSAK
UG96ZHJhd2lhbSwKIENlemFyeSBKYWNraWV3aWN6CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0
LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1h
bi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==

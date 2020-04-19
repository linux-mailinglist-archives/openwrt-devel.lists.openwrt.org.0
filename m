Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C7E1AF640
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Apr 2020 04:08:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vRr1ki/XfiiSGZoThyk9UCZoyHzYvFftbQaVWcZrnPM=; b=gZuQcKHey8t5Jw
	pCn3derdYoh/NO8ORq7rtMaLnZjjfp0X8R26SLfe7/tGGV+h+sUoSjD3R82dgU0lo4vZsiBF4azrn
	bA+MBVKNFXjZ5y6PbZt/mTzqlrkJy68aKWGV0sI0duhxfMW5bgPM1+PAn8i8TD/rpGm4qCY4MvHyM
	6j3yvpZzeyjlFq54cH6JZZ1/dgXP1yEpJkgnnF/fA/IRFgIzq0BHcIo+PLdigXjNZFP4V3DYSJCTV
	T47Ryb09rceQJfk3j0LPPmGCLyrot8SmPM46oaiBpOetd7la0INBb3jQaCL/cn2XTv06YyWDysbxR
	rTkgDqWD8/UPv5XJd8Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPzNR-0007qU-No; Sun, 19 Apr 2020 02:08:09 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPzNM-0007q9-EC
 for openwrt-devel@lists.openwrt.org; Sun, 19 Apr 2020 02:08:05 +0000
Received: by mail-ot1-x330.google.com with SMTP id z25so1498936otq.13
 for <openwrt-devel@lists.openwrt.org>; Sat, 18 Apr 2020 19:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Zcq6Cm1pco8ZIHHx6YJEEjI3fqWHzXIaf2SCYFM4pfU=;
 b=VR+ahP14ReDtqipc/PyftL6Bnpzj4UO3ZXaHFmCYafQkwxlIJx4dt3ZEkmxpKX/TP5
 C+/wPZjPsmzUrGAMbyQp09/K6M1ilGIaJxH1ZgHxMP8OYZ8JvgCecwc6opKWgNrrp5tq
 P7LDfGRZ6n+Zj9ycnvTqbhCMR/C4b6a0cMLYZTGrf95XXNCpRJwcT/EjOVctxkrYPifg
 vAjADw3XMKdLY22XhqIb2unwGWRLn1HoZnvCdxKlqEHJA3M2RCsaCW4gHORX9Kduntj0
 BG6wWfOWzvMEPFyAgLT0dsLxSgSXT4LZQEDSjA2olPw/szEo6DyN2izIqzhfRbwuuuY3
 nd2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Zcq6Cm1pco8ZIHHx6YJEEjI3fqWHzXIaf2SCYFM4pfU=;
 b=sDbBRSfPnee1wxHuXS7RPI2dhHwFwbKR95wS2jNvq04VMjvX4aWQ/NvSz+aKfwl47E
 XpSruVVW8OpWUyCcO6oqW1GFxIC3+cWAc+t2C6U8J3HxUvnfZXnnlr+b4ajppyYMSlAA
 zQ9Q84yK4i0QFVA07FMv9W1GpKsPlEKkD9NpRZneXY8cep88s/hAtuu9U6LHvFGLL74C
 nAyXKSnZDg40RNCbW5fPL5YVA0x3W9AnMC6zN7jmDLQUdyML032JQ2SanZkyiFcgkYjo
 JROyznkVunDJ0gqbMUItwzQsdXroLIAU/TlkZTSX13sj2uZ+wfCwYv3HOZxpZRlZnBkF
 uLSw==
X-Gm-Message-State: AGi0PuZ2sX22Y1y9ibqPzf3TzIiG50ksZhYjtxeT+bmb1FiwWb7iChZw
 7CUU3iuOjinJFaEiBhXk9+iyb6+/JpqWUgMISpo=
X-Google-Smtp-Source: APiQypIJ385uqlTwPueDSqJgh//0BKWSOiHq7QDO1uDrXm81BEE0nMaNcCk2sX3LWFzU2I47z8d7arLgI7kagtXOMWY=
X-Received: by 2002:a05:6830:1303:: with SMTP id
 p3mr4922059otq.186.1587262082588; 
 Sat, 18 Apr 2020 19:08:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200414233728.2519084-1-rosenp@gmail.com>
 <00ef01d61495$41440df0$c3cc29d0$@adrianschmutzler.de>
 <CAKxU2N9fWhV+ZTFM-EXgKzsrFTFv7w+Fi0OWVrrC+C4jH+PEMA@mail.gmail.com>
 <9B0C699B-8940-4032-AAA9-1E1568450E43@darbyshire-bryant.me.uk>
In-Reply-To: <9B0C699B-8940-4032-AAA9-1E1568450E43@darbyshire-bryant.me.uk>
From: Rosen Penev <rosenp@gmail.com>
Date: Sat, 18 Apr 2020 19:07:51 -0700
Message-ID: <CAKxU2N-z4D0um9sQFmjCC+dBos6ggCPxu+a=ehkf6qE72PTSTQ@mail.gmail.com>
To: "Kevin 'ldir' Darbyshire-Bryant" <ldir@darbyshire-bryant.me.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_190804_501855_C4712F33 
X-CRM114-Status: GOOD (  15.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:330 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCHv3] ubox: run init script through
 shellcheck
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

T24gU2F0LCBBcHIgMTgsIDIwMjAgYXQgMjoyMiBBTSBLZXZpbiAnbGRpcicgRGFyYnlzaGlyZS1C
cnlhbnQKPGxkaXJAZGFyYnlzaGlyZS1icnlhbnQubWUudWs+IHdyb3RlOgo+Cj4KPgo+ID4gT24g
MTggQXByIDIwMjAsIGF0IDAxOjU2LCBSb3NlbiBQZW5ldiA8cm9zZW5wQGdtYWlsLmNvbT4gd3Jv
dGU6Cj4gPgo+ID4gT24gRnJpLCBBcHIgMTcsIDIwMjAgYXQgMTo1MCBBTSA8bWFpbEBhZHJpYW5z
Y2htdXR6bGVyLmRlPiB3cm90ZToKPiA+Pgo+ID4+Pgo+ID4+PiAtICAgICBbICRsb2dfYnVmZmVy
X3NpemUgLWVxIDAgLWEgJGxvZ19zaXplIC1ndCAwIF0gJiYKPiA+Pj4gbG9nX2J1ZmZlcl9zaXpl
PSRsb2dfc2l6ZQo+ID4+PiAtICAgICBbICRsb2dfYnVmZmVyX3NpemUgLWVxIDAgXSAmJiBsb2df
YnVmZmVyX3NpemU9NjQKPiA+Pj4gKyAgICAgWyAiJGxvZ19idWZmZXJfc2l6ZSIgLWVxIDAgXSAm
JiBbICIkbG9nX3NpemUiIC1ndCAwIF0gJiYKPiA+Pgo+ID4+IEknbSBuZXZlciBzdXJlIHdoZXRo
ZXIgYSBjb21wYXJpc29uIFsgIiRzdHJpbmciIC1lcSAwIF0sIGkuZS4gb25lIHdpdGggcXVvdGVz
IGFuZCBvbmUgd2l0aG91dCB1c2luZyAtZXEgd29ya3MgYXMgZXhwZWN0ZWQgaW4gYWxsIGNhc2Vz
Lgo+ID4+IEkgdHlwaWNhbGx5IHVzZSBbICIkc3RyaW5nIiA9ICIwIiBdIGluc3RlYWQsIGJ1dCBJ
J20gbm90IHN1cmUgd2hldGhlciB0aGF0J3MgZWZmZWN0aXZlbHkganVzdCB0aGUgc2FtZS4KPiA+
IFNvdW5kcyBib2d1cy4gbG9nX2J1ZmZlcl9zaXplIGFuZCBsb2dfc2l6ZSBhcmUgc3RhdGVkIHRv
IGJlIHVpbnRlZ2VycyBhYm92ZS4KPiA+Pgo+ID4+IFJlc3Qgc2VlbXMgZmluZSwgZGVzcGl0ZSBz
b21lIHNpbWlsYXIgY2FzZXMgd2l0aCAtZXEvLW5lIGJlbG93Lgo+ID4gLWVxLy1uZSB2cyA9IGlz
IGEgc3R5bGlzdGljIGRpZmZlcmVuY2UuCj4KPiBJIGRpc2FncmVlLiAg4oCYPSAhPSA8ID7igJkg
YXJlIHN0cmluZyBjb21wYXJpc29ucywgLWVxLy1uZS9ndC9sdC9nZS9sZSBhcmUgbnVtZXJpYy9h
cml0aG1ldGljIGNvbXBhcmlzb25zLgpUaGVzZSBhcmUgbm90IHN0cmluZ3MuIFRoZXNlIGFyZSBp
bnRlZ2Vycy4KCkkgZGlkIGFzIHdhcyBhc2tlZCBhbmQgc2hlbGxjaGVjayBub3cgY29tcGxhaW5z
OgoKU0MyMDcxOiA+IGlzIGZvciBzdHJpbmcgY29tcGFyaXNvbnMuIFVzZSAtZ3QgaW5zdGVhZC4K
Pgo+IENvbnNpZGVyIHRoaXMgc2xpZ2h0bHkgY29udHJpdmVkIGNhc2Ugd2hlcmUgdG8gZW1waGFz
aXNlIHRoZSBkaWZmZXJlbmNlIGJldHdlZW4gc3RyaW5nIGFuZCBudW1lcmljIGNvbXBhcmlzb24g
SSBjb21wYXJlIHRvIOKAmTAw4oCZIHdoaWNoIGlzIGFyaXRobWV0aWNhbGx5IHplcm8sIGJ1dCBu
b3QganVzdCBhIHNpbXBsZSwgbG9uZSDigJgw4oCZIHN0cmluZy4KPgo+ICMhL2Jpbi9zaAo+Cj4g
c2V0IC14Cj4KPiBbICIkZm9vIiAtZXEgMDAgXSAmJiBlY2hvIFoKPiBbICIkZm9vIiA9IDAwIF0g
JiYgZWNobyBaCj4gWyAkZm9vIC1lcSAwMCBdICYmIGVjaG8gWgo+IFsgJGZvbyA9IDAwIF0gJiYg
ZWNobyBaCj4KPiBmb2894oCcMCIKPiBbICIkZm9vIiAtZXEgMDAgXSAmJiBlY2hvIFoKPiBbICIk
Zm9vIiA9IDAwIF0gJiYgZWNobyBaCj4gWyAkZm9vIC1lcSAwMCBdICYmIGVjaG8gWgo+IFsgJGZv
byA9IDAwIF0gJiYgZWNobyBaCj4KPiBmb289MAo+IFsgIiRmb28iIC1lcSAwMCBdICYmIGVjaG8g
Wgo+IFsgIiRmb28iID0gMDAgXSAmJiBlY2hvIFoKPiBbICRmb28gLWVxIDAwIF0gJiYgZWNobyBa
Cj4gWyAkZm9vID0gMDAgXSAmJiBlY2hvIFoKPgo+IFRoZSB1bnF1b3RlZCBleHBhbnNpb25zIG9m
ICRmb28gaW4gdGhlIGZpcnN0IGJsb2NrIHdpbGwgbGVhZCB0byB1bmtub3duIG9wZXJhbmQgZXJy
b3JzIHNpbmNlICRmb28gZXhwYW5kcyB0byBub3RoaW5nLiAgVGhlIHF1b3RlZCAkZm9vIGluIHRo
ZSBmaXJzdCBibG9jayB3aWxsIGxlYWQgdG8g4oCZc2g6IG91dCBvZiByYW5nZeKAmSBiZWNhdXNl
IOKAnOKAnSBpcyBub3QgYW4gaW50ZWdlciBzdWl0YWJsZSBmb3IgdGhlIGludGVnZXIgLWVxIGNv
bXBhcmlzb24uICBBIHNvbHV0aW9uOgo+Cj4gWyAiJGZvbyIgXSAmJiBbICIkZm9vIiAtZXEgMDAg
XSAmJiBlY2hvIFoKPgo+IEluIGxhdGVyIGJsb2NrcywgYmVjYXVzZSAkZm9vIGlzIG5vdyBzZXQg
aXQgYWx3YXlzIGV4cGFuZHMgdG8gc29tZXRoaW5nIHNvIHRoZXJl4oCZcyBubyBkaWZmZXJlbmNl
IGJldHdlZW4gcXVvdGVkIHZzIHVucXVvdGVkIGJlaGF2aW91ciAoaW4gdGhpcyBleGFtcGxlISkg
IHdl4oCZcmUganVzdCBpbnRvIHRoZSBkaWZmZXJlbmNlcyBiZXR3ZWVuIHN0cmluZyB2cyBudW1l
cmljIHZhbHVlIGNvbXBhcmlzb25zLCBpZS4gc3RyaW5nIOKAmDDigJkgaXMgbm90IGVxdWFsIHRv
IOKAmTAw4oCZIGJ1dCB2YWx1ZSDigJgw4oCZIGlzIGVxdWFsIHRvIOKAmTAwJwo+Cj4gTWF5YmUg
dGhhdCBoZWxwcy4KPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGlu
Zm8vb3BlbndydC1kZXZlbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5v
cGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Bl
bndydC1kZXZlbAo=

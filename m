Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3773D2AC28
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 May 2019 22:46:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nOAY+zSAB0JEtfS/DaHXzhnIHOvD4a2mp/mng9vhMrQ=; b=h5mh+4qUx4bD2oS0vkYlR373ZO
	RI5/l60X3QXsoxJqRbSytZkgehUeQtw6rn2enIFc/30Ib+As+EEpupqgVADkmzU9paM5Llt6+ijCw
	MrMLdpg9jM9uchHjBaQ7UBpFQo+dF1oT13FeGfYtw4kM2QjXJGEeP4NVI0nkeuSQIG5G2okOUBd0K
	0ealykBPnBsIfqhZkS9/LceWMnqvqn6rqdJ7NRr02miQy1efdEvFCekq8j7Il5G+gkXbRheTl52vG
	dnSrCsIWbdLITwPPIjAsall8TGjwuaI9Epe9SJ24etyuoNd8folr4Bn16Lgw7sBRT61z9VMyFCoE9
	jWjH801w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV02C-0006kG-S0; Sun, 26 May 2019 20:46:24 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV025-0006ju-0Q
 for openwrt-devel@lists.openwrt.org; Sun, 26 May 2019 20:46:18 +0000
Received: by mail-lf1-x135.google.com with SMTP id n22so2855917lfe.12
 for <openwrt-devel@lists.openwrt.org>; Sun, 26 May 2019 13:46:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=sgaNo2lhe2X0TcbERgqNlN8tdtjPSdTTR31foQDWGNk=;
 b=Zc9Ne9tNXMJBauAxvRM9Qzh9yNwNiltYvy+itNVT79lyePKZxVMQvbfREA2uDgJkJr
 cUhDXO5YKLrAHec6uBecX8NrREajLZ9lK7Tw76Qms7Gvg0mLA5b8X7cjBY8LwEDYAF5H
 2ltTj4nxE4wbqkPX1evSYOga82WuXO6bspEpWIUhJXVHl+PnK5yurH+ywRk+M5UQAkjx
 Q+MS6BKTDJDL0CH8sBscc78M40Rb+2WpSJeNO7OJhbLoOLlekuP34I0DCVGY4GEHTCIF
 2W2/E1CwnVHviFQDtUEqZ9BcqE/0Cop86irw5jeiImTC57aWztwPRR1ZyfoSh0yVqhTU
 WjEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sgaNo2lhe2X0TcbERgqNlN8tdtjPSdTTR31foQDWGNk=;
 b=Rld17QN5Q0xuxfSXYbOKiV8XynEwV+pEr43ewl6LfL//KUCmFXn9+jHAuQleSmluPb
 kn5RGvwjDa9X1E0hAJpN52YpkM/7YkhCHATe4o+0vbqV+H78MpdYIS/0/Z29QiXtLT7n
 d2jgmtafUTQFb2B/RgckW4BdzTNK4d9Up0Zro7sFdIsCl2kWw2aJuHYFVjLZsLcclq3T
 2XV/1VrACWtPXA9Kj4ptdUuKor0xQalBaBvDA3XWSFs344L+gj1MMtToHY5BGu69Slzy
 p+WaY6u40ozFPLx8YO0Kbv2+hPFRBt5MXKH7eiNvHWUWxMBHBNAIn3Y2Mr0JUUZaviuH
 f9Bg==
X-Gm-Message-State: APjAAAUEShGRnN3BzmGGVQ1S1iGjz1gjoaQYmoW6qi39Cwjv45bjb+uJ
 xCgwJzd2geu/FTfXQ0ed2YBh3w2l
X-Google-Smtp-Source: APXvYqz+3SQ8HWGMVlEGqMpVXi8NiJYMT+cON4NTbbx/p58isuf3FWQ0bDWW9L26Dj9RP6Nl1ZX5HA==
X-Received: by 2002:a19:a5ca:: with SMTP id o193mr32008655lfe.89.1558903574775; 
 Sun, 26 May 2019 13:46:14 -0700 (PDT)
Received: from samsung (095160102144.warszawa.vectranet.pl. [95.160.102.144])
 by smtp.gmail.com with ESMTPSA id
 y14sm1844937ljh.60.2019.05.26.13.46.12
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 26 May 2019 13:46:13 -0700 (PDT)
Date: Sun, 26 May 2019 22:46:11 +0200
From: Cezary Jackiewicz <cezary.jackiewicz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20190526224611.222e58d7@samsung>
In-Reply-To: <4c215f25-2110-2bbd-5557-a18138378133@birger-koblitz.de>
References: <03add529-c9ba-6cfe-3ce4-9d209239d675@birger-koblitz.de>
 <20190526192856.1290416d@samsung>
 <4c215f25-2110-2bbd-5557-a18138378133@birger-koblitz.de>
X-Mailer: Claws Mail 3.16.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_134617_077381_A7859422 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:135 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cezary.jackiewicz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

RG5pYSAyMDE5LTA1LTI2LCBvIGdvZHouIDIyOjE2OjMwCkJpcmdlciBLb2JsaXR6IDxtYWlsQGJp
cmdlci1rb2JsaXR6LmRlPiBuYXBpc2HFgihhKToKCj4gSGksCj4gCj4gT24gMjYuMDUuMTkgMTk6
MjgsIENlemFyeSBKYWNraWV3aWN6IHdyb3RlOgo+ID4+ICvCoMKgwqDCoMKgwqDCoCB1Y2lkZWZf
c2V0X2xlZF9uZXRkZXYgImxhbiIgImxhbiIgIiRib2FyZG5hbWU6Z3JlZW46aW50ZXJuZXQiICJl
dGgwIgo+ID4+ICsgICAgICAgIDs7wqDCoMKgwqAgIAo+ID4gQWxzbyB3b3JraW5nOgo+ID4KPiA+
IHVjaWRlZl9zZXRfbGVkX3N3aXRjaCAibGFuIiAibGFuIiAiJGJvYXJkbmFtZTpncmVlbjpsYW4i
ICJzd2l0Y2gwIiAiMHgyMCIKPiA+Cj4gPiAoaWYgeW91IHJlbmFtZSBpbnRlcm5ldCB0byBsYW4p
Cj4gPiAgCj4gQXJlIHlvdSBzdXJlIGFib3V0IHRoaXM/IEkgcmVuYW1lZCB0aGUgaW50ZXJuZXQg
dG8gbGFuLCBidXQgb24gdGhlCj4gNzQ3NnJwYyB0aGUgbGVkIGRvZXMgbm90IHR1cm4gb246CgpP
biA3NDc4YWMsIHllcywgaSdtIHN1cmUuCgpyb290QE9wZW5XcnQ6fiMgc3djb25maWcgZGV2IHN3
aXRjaDAgc2hvdyB8IGdyZXAgcG9ydAoJbGluazogcG9ydDowIGxpbms6ZG93bgoJbGluazogcG9y
dDoxIGxpbms6ZG93bgoJbGluazogcG9ydDoyIGxpbms6ZG93bgoJbGluazogcG9ydDozIGxpbms6
ZG93bgoJbGluazogcG9ydDo0IGxpbms6ZG93bgoJbGluazogcG9ydDo1IGxpbms6dXAgc3BlZWQ6
MTAwMGJhc2VUIGZ1bGwtZHVwbGV4IAoJbGluazogcG9ydDo2IGxpbms6dXAgc3BlZWQ6MTAwMGJh
c2VUIGZ1bGwtZHVwbGV4IAoJbGluazogcG9ydDo3IGxpbms6ZG93bgpyb290QE9wZW5XcnQ6fiMg
Y2F0IC9zeXMvY2xhc3MvbGVkcy9ldy03NDc4YWNcOmdyZWVuXDpsYW4vdHJpZ2dlciAKbm9uZSBb
c3dpdGNoMF0gdGltZXIgZGVmYXVsdC1vbiBuZXRkZXYgcGh5MHJ4IHBoeTB0eCBwaHkwYXNzb2Mg
cGh5MHJhZGlvIHBoeTB0cHQgcGh5MXJ4IHBoeTF0eCBwaHkxYXNzb2MgcGh5MXJhZGlvIApyb290
QE9wZW5XcnQ6fiMgY2F0IC9zeXMvY2xhc3MvbGVkcy9ldy03NDc4YWNcOmdyZWVuXDpsYW4vcG9y
dF9tYXNrIAoweDIwCnJvb3RAT3BlbldydDp+IyAKCgo+IFNvQzrCoMKgIE1lZGlhVGVrIE1UNzYy
MGEgQCA1ODBNSHoKPiBSQU06wqDCoCA2NE0gKFdpbmJvbmQgVzk3NTFHNktCLTI1KQo+IEZMQVNI
OiAxNk1CIChNYWNyb25peCkKCkFyZSB5b3Ugc3VyZT8gT24geW91ciBkdHM6Cgo+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwYXJ0aXRpb25ANzAwMDAgewo+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgY29tcGF0aWJsZSA9ICJlZGltYXgsdWltYWdlIjsKPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGxhYmVsID0gImZpcm13
YXJlIjsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHJlZyA9IDwweDAwMDcwMDAwIDB4MDA3OTAwMDA+Owo+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9OwoKVGhpcyBpcyA4TUIKClsgICAg
MS4yNzQyNzZdIHNwaSBzcGkwLjA6IGZvcmNlIHNwaSBtb2RlMwpbICAgIDEuMjgyNzc3XSBtMjVw
ODAgc3BpMC4wOiBteDI1bDY0MDVkICg4MTkyIEtieXRlcykKWyAgICAxLjI5MjYwMV0gNSBmaXhl
ZC1wYXJ0aXRpb25zIHBhcnRpdGlvbnMgZm91bmQgb24gTVREIGRldmljZSBzcGkwLjAKWyAgICAx
LjMwNTI2Ml0gQ3JlYXRpbmcgNSBNVEQgcGFydGl0aW9ucyBvbiAic3BpMC4wIjoKCgoKPiBJbnN0
YWxsYXRpb24KPiAtLS0tLS0tLS0tLS0KPiBVcGRhdGUgdGhlIGZhY3RvcnkgaW1hZ2UgdmlhIHRo
ZSB3ZWItaW50ZXJmYWNlcyAoYnkgZGVmYXVsdDoKPiAxOTIuMTY4LjkuMi8yNCkuCj4gaHR0cDov
LzE5Mi4xNjguOS4yL2luZGV4LmFzcAoKT3IgcHVzaCB3cGEgYnV0dG9uIG9uIHBvd2VyIG9uIGFu
ZCBzZW5kIGZpcm13YXJlIHZpYSB0ZnRwIHRvIDE5Mi4xNjguMS42IAogCj4gcmFtaXBzOiBhZGQg
TmV0Z2VhciBFVy03NDc4QUMKPiAKPiBTb0M6wqDCoCBNZWRpYVRlayBNVDc2MjBhIEAgNTgwTUh6
Cj4gUkFNOsKgwqAgNjRNIChXaW5ib25kIFc5NzUxRzZLQi0yNSkKPiBGTEFTSDogMTZNQiAoTWFj
cm9uaXgpCgo4TUIgOikgaW4gdmVyc2lvbiBzb2xkIGluIFBvbGFuZC4KCgotLSAKUG96ZHJhd2lh
bSwKIENlemFyeSBKYWNraWV3aWN6CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxp
c3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5m
by9vcGVud3J0LWRldmVsCg==

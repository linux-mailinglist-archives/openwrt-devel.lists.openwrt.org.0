Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A93F103A19
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 Nov 2019 13:33:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oxAjR2zeTAt5D0RfVZCXj9a1anCXcms1pVaSmbkk4YI=; b=OoOmBicBFIFx9i
	wpV18oO1oZcm/u5TgZMRpA4+j0bDlhc45VHIRznMh602uarzNzhbOIjrtuc7IbyyYKpzgpW6tRkeV
	m1i4NzUDrvMOmQT9+d67MNUJJo5TAQyDwJTRhXlVg4IMfEwSBR5h6mZoBpDJz17oyoPWrM4+6jknG
	flW/KAoXz9A/5FS9+udzTt5aMafubLg8Rb9mt/Hvz7t8NrDN7y4kN5YC6zFHqW/hJ4z2nuHbJozOR
	+yWQV85bzBqzvYuiG+wd2vKYUvBLjbBXThFcBxVyYlpdhDUxwZIySurkp11/NSluAuXV7opTLTvFF
	Lx2examPRlB8ZeGoHhrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXPAk-0001lJ-Fq; Wed, 20 Nov 2019 12:33:26 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXPAe-0001kg-O7
 for openwrt-devel@lists.openwrt.org; Wed, 20 Nov 2019 12:33:21 +0000
Received: by mail-lj1-x244.google.com with SMTP id r7so27316896ljg.2
 for <openwrt-devel@lists.openwrt.org>; Wed, 20 Nov 2019 04:33:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=tMznh6HtDH8wIz0EPsy6u+5qDpnV3ZvU1Fv27wQpOSA=;
 b=X2D2YtodVLzPizvtxnaKCZZTUPr+uNkV9soZu92c3Gi1kKUWbczxpglFxaG/GiANcJ
 VBAdbxZK1XeHZSRplLeAIgYaj10Vab3akSxg4KT4vboMJM38VHBw5plTtdxtWp/oEWCv
 RunKz1EYe06LAacmHGhGquYl7x12zd5AhzJnIij7i2exGx7129NY7Se5vRbbIUGzeJ+g
 smgRpY73l/oLOjCo5H159qMdFZMRDX4OZY8hJZTWbnWWZ5GbT5oyCEtWQ4gSK2eaX3SK
 cgJYEEYtp3TN6bpsbDV1Tl/iO6+z/1dzVJpp+x3DatQPX1WPVIlvIpLsInLKxkrMC4TA
 ngBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=tMznh6HtDH8wIz0EPsy6u+5qDpnV3ZvU1Fv27wQpOSA=;
 b=obYs7a9+eHAJ+Jqg/Cv5G2DaIlbBNxX/1A7Ffl8n212Jf43u9sbChk9nlauQyl/Gau
 pA1tMSYi62ozi9fnKnorhXgq+L1Ro6tXa9xCzoEG34Ch7o2vNBe45NlsY8ov68EBa9mR
 QsVZnV/Qtf9n46V2aBe6fw9og3lH9NW5q0rkZjx3585ViS8EadaqQ/4O3BzJXTzRY8Zq
 mezQnk7kzd3iKFQxVuhcAFhOmmKEbYJ+gn5C7DwFT3gmCPZq8AFwqwRIVcC4XU1NqYQS
 2ZmfJ6vHrFcebdrDugBvDLEithXc4047lyYomQYdU/CHpN0R2hITuPPuykUnPJ4dC2Xd
 Vrmw==
X-Gm-Message-State: APjAAAVJbvLsTaMYVqYE2HaclfVGA2GS83ZLCotEYTQ2dAt3SddNpSk/
 4cL9FYLi51P1A1Z36CNipf7bHOapEmk7ciG+2HIwEQEY
X-Google-Smtp-Source: APXvYqy7M7MDDqAc2vKWlEx2oknmZEjMh+e2j7GYG2xcYP8zV6qJPWsO4dtnZOvePZj4vx0R3YZgh3d7Ob6UOxEA7Wg=
X-Received: by 2002:a2e:b604:: with SMTP id r4mr2498956ljn.134.1574253198361; 
 Wed, 20 Nov 2019 04:33:18 -0800 (PST)
MIME-Version: 1.0
References: <20191120115926.23272-1-ynezz@true.cz>
 <20191120115926.23272-10-ynezz@true.cz>
In-Reply-To: <20191120115926.23272-10-ynezz@true.cz>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Wed, 20 Nov 2019 20:33:06 +0800
Message-ID: <CAECwjAio8nAN6ojR4r_7XGZyxuX-e=oYXN7WRkXtBOXy_yanTw@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_043320_787081_53DBB0D6 
X-CRM114-Status: UNSURE (   6.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH libubox 9/9] avl: guard against
 theoretical null pointer dereference
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

T24gV2VkLCAyMCBOb3YgMjAxOSBhdCAyMDowMSwgUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5j
ej4gd3JvdGU6Cj4KPiBjbGFuZy0xMCBhbmFseXplciByZXBvcnRzIGZvbGxvd2luZzoKPgo+ICBh
dmwuYzo2NzE6MjU6IHdhcm5pbmc6IEFjY2VzcyB0byBmaWVsZCAncGFyZW50JyByZXN1bHRzIGlu
IGEgZGVyZWZlcmVuY2Ugb2YgYSBudWxsIHBvaW50ZXIgKGxvYWRlZCBmcm9tIGZpZWxkICdyaWdo
dCcpCj4gICAgICBub2RlLT5yaWdodC0+cGFyZW50ID0gcGFyZW50Owo+ICAgICAgICAgICAgfn5+
fn4gICAgICAgICBeCj4KPiBXaGljaCBzZWVtcyB0byBiZSBpbXBvc3NpYmxlIHRvIHRyaWdnZXIg
dmlhIGV4cG9ydGVkIEFWTCBwdWJsaWMgQVBJLCBidXQKPiBpdCBjb3VsZCBiZSBwcm9iYWJseSB0
cmlnZXJyZWQgYnkgZmlkZGxpbmcgd2l0aCB0aGUgQVZMIHRyZWUgbm9kZSBzdHJ1Y3QKPiBtZW1i
ZXJzIG1hbnVhbGx5IGFzIHRoZXkgYXJlIGV4cG9zZWQuCj4KCk5vLCB0aGVvcmV0aWNhbGx5IGl0
J3Mgc3RpbGwgaW1wb3NzaWJsZSwgZXZlbiBpZiBjYWxsZXJzIGZpZGRsZWQgd2l0aAp0aGVzZSBp
bnRlcm5hbCBtZW1iZXJzIGJlZm9yZSA7KQoKVGhlIGZpcnN0IGNoZWNrIChub2RlLT5sZWZ0ID09
IE5VTEwgJiYgbm9kZS0+cmlnaHQgPT0gTlVMTCkgaWYKbWF0Y2hlZCwgd2lsbCByZXR1cm4uICBU
aGlzIGNvbW1pdCBpcyBvbiAybmQgY2hlY2sgKG5vZGUtPmxlZnQgPT0KTlVMTCkgd2hpY2ggaW1w
bGllcyAobm9kZS0+cmlnaHQgIT0gTlVMTCkKCiAgICAgICAgICAgICAgICB5b3Vzb25nCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVs
IG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlz
dHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==

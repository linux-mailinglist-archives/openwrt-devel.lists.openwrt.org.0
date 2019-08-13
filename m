Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A74868C43F
	for <lists+openwrt-devel@lfdr.de>; Wed, 14 Aug 2019 00:29:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YFgxQlV8FU+OYQOm9EMYKFDX0NPGSf2phVMzAnm3XIM=; b=QDg7fpTJ5UNafX
	CdYfEV8aWF4uk2av/guSI2ro6qDPhJlLnzfewcso5f8oXwtCgLGZcynIykT2dJBIRQNXeVEGXqDgq
	Wr00j2Q/NaV3IZiQaBLxsx+l44t5lxzEP5twG9Lr2app13lKJ9ZUZgNfImbZqxsRxol0u/1gBIrCX
	Rp7up6zn+8AOD8msf4JvjSv5v6NQHKcoWaZ1RPOID+JBE0aaPbVo3JSqV3Lo60F+S7NFnUkLzukEQ
	f8nLbkHQnYeIL0gOOgsdHz0ogvEoR9lnE6VviS/2TwsEM6tiMkNMuRsR8VPlPlCyUdXJ5/tIF1cdV
	ocosHoTG2RcLlCxoau+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxfIO-0003p9-H2; Tue, 13 Aug 2019 22:29:36 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxfIG-0003oH-Pv
 for openwrt-devel@lists.openwrt.org; Tue, 13 Aug 2019 22:29:30 +0000
Received: by mail-ot1-x344.google.com with SMTP id e12so33597907otp.10
 for <openwrt-devel@lists.openwrt.org>; Tue, 13 Aug 2019 15:29:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=hx+YN8IRqL82dP44R+tPHV3ctjXv1miImnk45LycM7g=;
 b=uMqrNkhPxWbRgYdz7uyEjLPRqGGA9ZrkOXOSioki38L8TlFCoicOtDhTcVUN5Z93cY
 FiJNigJVXM5GiCmnJ/LCaKcc9TLqDm08xVq8g9wRzUHhjnnwPV7HHnd2Lw5NIUnY2zgR
 5/jL4ZlRuIH7tOK1P8yJJ0auAnx2briISxQW6PczaNHKaA0E+mU+Z9hDa9TJE/loS+FA
 0jGZHoXocXm5TU2eCUb0T6AJg/pyPJv26/WBBZtw1v9i1o90S0+JtzZOMPUFiSWCVWPv
 7Zj+yCONSWSozTTT2hKybvhuo3p0Yjp0jYvgwhuwjspMvvjSx1kD8UCntoi1eGOKjmMm
 SezA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=hx+YN8IRqL82dP44R+tPHV3ctjXv1miImnk45LycM7g=;
 b=b5HxytuGryFZS8fsdhjR1gJ14NHKdCl8+1YoizgISXt1btBGD6G9wK/mKYUjE/pb1z
 0xsThVpJtGd6+63f96xDRT4XpJCkmStUmXuBxQfHVzxVlUB3KQjicUHj4FksiqpSqrvV
 t6lyMpmTQNdMtydjZvrag+/7o6dzhoduqlY71zbY6Sx6gRzu6heFquUdx2P/xG2bF8tF
 2Rw38qDZU1jQSwa551DaCy+UqLQD6K/xDFFcB+zKdspoqDS1lChDVz/m1cYtJDwkgEVA
 DUmEu2T9YG0MFBTUV7zRmOGf46x23tJsoUI1j31/xbNc7enB5nZlXajAhhLUPc5M4cUI
 qXag==
X-Gm-Message-State: APjAAAWPWzE8ZARMDIzDlTbJjgdTCTdReWm9ZYQTevuc1N856gF7WzdV
 7Gy0VFucko3189tjv5zcGTtgLPn1A5Us1jREZEA=
X-Google-Smtp-Source: APXvYqzitbUIJpcVby9U+Tjw/sN/s8VfMDsD1+9fYndWTbygxGb7rR5i90Ra4Zv/bPlIc7F6z6ttW4ST5hlrrHNk5Mg=
X-Received: by 2002:a9d:6a09:: with SMTP id g9mr4585998otn.186.1565735365820; 
 Tue, 13 Aug 2019 15:29:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190501170810.5230-1-rosenp@gmail.com>
 <20190503115015.GA71477@meh.true.cz>
 <CAKxU2N_kouAC4fhpnw9J+uSeZVE=QdrDcnTmQ45Xk7-aK3iVqA@mail.gmail.com>
 <1557095059.1591.0@smtp.gmail.com> <20190506074419.GF81826@meh.true.cz>
In-Reply-To: <20190506074419.GF81826@meh.true.cz>
From: Rosen Penev <rosenp@gmail.com>
Date: Tue, 13 Aug 2019 15:29:14 -0700
Message-ID: <CAKxU2N9G8Y7-eo4-rZohAPsLe5XV_eNFBW137Q0pJbKyESxN6g@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_152928_844353_FD3EC5F9 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] nftables: Fix compilation with uClibc-ng
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

T24gTW9uLCBNYXkgNiwgMjAxOSBhdCAxMjo0NCBBTSBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVl
LmN6PiB3cm90ZToKPgo+IFJvc2VuIFBlbmV2IDxyb3NlbnBAZ21haWwuY29tPiBbMjAxOS0wNS0w
NSAxNToyNDoxOV06Cj4KPiA+IE9uIEZyaSwgTWF5IDMsIDIwMTkgYXQgMTE6NDkgQU0sIFJvc2Vu
IFBlbmV2IDxyb3NlbnBAZ21haWwuY29tPiB3cm90ZToKPiA+ID4gT24gRnJpLCBNYXkgMywgMjAx
OSBhdCA0OjUwIEFNIFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+IHdyb3RlOgo+ID4gPiA+
Cj4gPiA+ID4gIFJvc2VuIFBlbmV2IDxyb3NlbnBAZ21haWwuY29tPiBbMjAxOS0wNS0wMSAxMDow
ODoxMF06Cj4gPiA+ID4KPiA+ID4gPiAgSGksCj4gPiA+ID4KPiA+ID4gPiAgPiBNaXNzaW5nIGhl
YWRlciBmb3IgdmFfbGlzdC4KPiA+ID4gPgo+ID4gPiA+ICBzaG91bGRuJ3QgdGhpcyBnbyB0aHJv
dWdoIHVwc3RyZWFtIGZpcnN0PyBUaGFua3MuCj4gPiA+IFNlbnQKPiA+IFRoaXMgd2FzIGFwcGxp
ZWQgdXBzdHJlYW0uCj4KPiBOaWNlLCB0aGFua3MuIEkndmUgdXBkYXRlZCB0aGUgY29udGVudCBv
ZiB0aGUgcGF0Y2ggdG8gbWF0Y2ggdGhhdCBpbiB1cHN0cmVhbQo+IGFuZCBtZXJnZWQgdGhhdCBp
bnRvIG15IHN0YWdpbmcgdHJlZS4KPgo+IDEuIGh0dHBzOi8vZ2l0Lm9wZW53cnQub3JnLzllZmM2
YWQxOTUKPgo+IC0tIHluZXp6CkNhbiB5b3UgYmFja3BvcnQgdGhpcyB0byAxOC4wNj8gSXQgZmFp
bHMgdGhlcmUgYXMgd2VsbDoKaHR0cHM6Ly9kb3dubG9hZHMub3BlbndydC5vcmcvcmVsZWFzZXMv
ZmFpbGxvZ3MtMTguMDYvYXJjX2FyYzcwMC9iYXNlL25mdGFibGVzL2NvbXBpbGUudHh0CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVs
IG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlz
dHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 836FD184F5A
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Mar 2020 20:39:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/grj5VEOpplUCCvA+6tTQ+VyEf4YPVcHeHJZ1EYXLAc=; b=mkFSYw3BkSWhra
	TOENJyo0GsbMJKgHgaBJ4h6jSDbc6oeOlsv6giuLLYD6lGuVUFNT2OBiterbad5EwHAEDhkryYOqT
	dMFmxDEIdZAQOHBtV57cCDaQIJ9IZYtMEDXobYDHrQwNHA9y6nxzQr9RyXuaTEvGOpcAZn2ntnOYH
	gK0SPGPrTDhQOdmLtvNENAq1EfXLeRChZUFeaKiCDkZETQbVIAcF87SmLpcEZHQII4hwl6Ggn+4X0
	K89dDc0OM/4ce0nKJGD/9ZFluu0Zphz2gBmYUuiqgI8N0qQ3n5fAkYqw2I9PIbra6GUewZAO1vJQh
	iVCHYyq3VI/RRfmfLrVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCq9V-0006QI-1z; Fri, 13 Mar 2020 19:39:25 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCq9L-0006Q1-Gp
 for openwrt-devel@lists.openwrt.org; Fri, 13 Mar 2020 19:39:17 +0000
Received: by mail-ot1-x342.google.com with SMTP id h17so11331585otn.7
 for <openwrt-devel@lists.openwrt.org>; Fri, 13 Mar 2020 12:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=sHY4DwhYOBcITcJWjHvxlUbX5u8q87HnEp2C6PwN2Xo=;
 b=a9gJcalCMy1vYyi9szbhrO4/TFIpet9WuLXRVTaAapAvk/x9oE3KLRxPVv4NSazYE/
 zlOdQr+H1K6nl/6v0se7pTVuQrg/IMdLZDg9UFeMOKd1eh3Ylflh7Epo4fej+ZtP3pW7
 02pTz6pMZSMup3tjjWg3MhbrIgB2ygAqT4fs78NJQ4peprpnrVjiQxaeLkyG7Fq+c52L
 SzNxrPIzKnhJUaTgU73Jk9sXfifjX/byYuzIiE/VJoi4Ox6XzV3N+QBhiqsge1OmpRtM
 0nRrLjAniOW7ejSSiH/zDPA7rErhD1z+IK2XU5dSGO3H1bNRfJO+W12rj1JolWQhBKJU
 QqXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=sHY4DwhYOBcITcJWjHvxlUbX5u8q87HnEp2C6PwN2Xo=;
 b=TUrtWy2vBxHePkTTcRVL6X8hqubh/ZP19fivpR3cPbXHziDxC2um1IfX+ubmA9PDuH
 t4AVLJwzKWWb5GKCwes3rCm9RKUXYH1DmXBB8GGj1eooBsYRqcFETbmGM72EuvF1Tg+Z
 HsM/diLLBLxdTAEKoidEXWVOqC2YRm6b1RydWifZtVhgtjGy+e8jqQBZPDvb5PPrJfzz
 YnnD4q4mIhR1TOluinuONZEME+vPfjcmQx3n+TEkmLltIjj3jvTeRFqweFxaSN+3+kHJ
 PFB9A4Dacvvc8QQiOrni4Ull6a1dNrwTewJyrW5Jfr7yD0dyA9w6QmQKk81TnWaxGXdm
 NAzw==
X-Gm-Message-State: ANhLgQ02H3kMEeoHvBoP2GSwuxInNo7IVKwQKEEVIqt+UvfZst7o5fN/
 ULqt30dYv3BgIhnVwY7gC2pqUarbknGwTpm7Uyk=
X-Google-Smtp-Source: ADFU+vsHK3HrskCJugPcYXmKZfIVZ5QTAzs4WvCRaf7xglWpuM9IV/8VcbM5+UnInYiE9sTPKWzuvqIQvhDBqJ1+kZY=
X-Received: by 2002:a9d:7392:: with SMTP id j18mr12938231otk.186.1584128353472; 
 Fri, 13 Mar 2020 12:39:13 -0700 (PDT)
MIME-Version: 1.0
References: <20191128191933.5421-1-rosenp@gmail.com>
 <20191225111701.GI70645@meh.true.cz>
 <CAKxU2N9rckeK7LL2QvoEzghFLENtzNy3i-zFBW7a6RcH3OMcrw@mail.gmail.com>
 <20200228100254.GB2524@meh.true.cz>
 <CAKxU2N_jazEJgSmmMGOSEaACi6COFT62xZHs9POpT=D6NJ8fGQ@mail.gmail.com>
 <20200313143339.GA20674@meh.true.cz>
In-Reply-To: <20200313143339.GA20674@meh.true.cz>
From: Rosen Penev <rosenp@gmail.com>
Date: Fri, 13 Mar 2020 12:39:02 -0700
Message-ID: <CAKxU2N-39YF4=Kx0UxuyeCupK=-Rdmyvpuo+phTxS0pX0ZaQeg@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_123915_583813_B3BF7E79 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] pkgconf issue with kmods and libelf [Was: Re:
 tools/pkg-config: Replace with pkgconf]
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Andre Heider <a.heider@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gRnJpLCBNYXIgMTMsIDIwMjAgYXQgNzozMyBBTSBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVl
LmN6PiB3cm90ZToKPgo+IFJvc2VuIFBlbmV2IDxyb3NlbnBAZ21haWwuY29tPiBbMjAyMC0wMi0y
OCAyMDoxMjo0NV06Cj4KPiBIaSwKPgo+ID4gSXQncyBtb3JlIHBvcnRhYmxlIGFuZCBzbWFsbGVy
LiBBbmQgYXMgc3RhdGVkLCBpdCBpcyBzdGlsbCBmYWlybHkgYWN0aXZlLgo+Cj4gSm8gaGFzIHRv
ZGF5IGJyb3VnaHQgZm9sbG93aW5nIGlzc3VlIHRvIG15IGF0dGVudGlvbjoKPgo+ICMjIHBrZ2Nv
bmYKPiAgJCBQQVRIPSQocHdkKS9zdGFnaW5nX2Rpci9ob3N0L2JpbjokUEFUSCBTVEFHSU5HX1BS
RUZJWD0kKHB3ZCkvc3RhZ2luZ19kaXIvaG9zdCBQS0dfQ09ORklHX1BBVEg9JChwd2QpL3N0YWdp
bmdfZGlyL2hvc3QvbGliL3BrZ2NvbmZpZyBQS0dfQ09ORklHX0xJQkRJUj0kKHB3ZCkvc3RhZ2lu
Z19kaXIvaG9zdC9saWIvcGtnY29uZmlnIHBrZy1jb25maWcgbGliZWxmIC0tbGlicwo+ICAtbGVs
Zgo+Cj4gIyMgcGtnLWNvbmZpZwo+Cj4gICQgUEFUSD0kKHB3ZCkvc3RhZ2luZ19kaXIvaG9zdC9i
aW46JFBBVEggU1RBR0lOR19QUkVGSVg9JChwd2QpL3N0YWdpbmdfZGlyL2hvc3QgUEtHX0NPTkZJ
R19QQVRIPSQocHdkKS9zdGFnaW5nX2Rpci9ob3N0L2xpYi9wa2djb25maWcgUEtHX0NPTkZJR19M
SUJESVI9JChwd2QpL3N0YWdpbmdfZGlyL2hvc3QvbGliL3BrZ2NvbmZpZyBwa2ctY29uZmlnIGxp
YmVsZiAtLWxpYnMKPiAgLUwvaG9tZS9qb3cvZGV2ZWwvbGVkZS9zdGFnaW5nLmdpdC9zdGFnaW5n
X2Rpci9ob3N0L2xpYiAtbGVsZgo+Cj4gU28gaXQgbG9va3MgbGlrZSBwa2djb25mIGlzIGZpbHRl
cmluZyBvdXQgc29tZSBsaWJyYXJ5IHBhdGhzLCBjYXVzaW5nIGZvcgo+IGV4YW1wbGUgZm9sbG93
aW5nIGlzc3VlczoKPgo+ICBtYWtlWzVdOiAqKiogTm8gcnVsZSB0byBtYWtlIHRhcmdldCAndG9v
bHMvb2JqdG9vbC9vYmp0b29sJywgbmVlZGVkIGJ5ICcvaG9tZS9qb3cvZGV2ZWwvbGVkZS9zdGFn
aW5nLmdpdC9idWlsZF9kaXIvdGFyZ2V0LXg4Nl82NF9tdXNsL2xpbnV4LXg4Nl82NC9zaWl0LTEu
Mi9zaWl0Lm8nLiAgU3RvcC4KPgo+IDwgam93PiB0aGUgbWFpbiBrZXJuZWwgYnVpbGQgd2lsbCBz
a2lwIGJ1aWxkaW5nIG9ianRvb2wgKGFuZCBmb3JjaWJseSBkaXNhYmxlIENPTkZJR19TVEFDS19W
QUxJREFUSU9OKSBiZWNhdXNlIGl0IGNhbm5vdCBsaW5rIGxpYmVsZgo+IDwgam93PiBhbnkgZXh0
ZXJuYWwga21vZCB3aWxsIGFzc3VtZSBDT05GSUdfU1RBQ0tfVkFMSURBVElPTiBpcyBlbmFibGVk
IGFuZCBrYnVpbGQgd2lsbCB0cnkgdG8gaW52b2tlIG9ianRvb2wgd2hpY2ggZG9lc24ndCBleGlz
dCBpbiB0aGUgcHJlY29tcGlsZWQga2VybmVsIHNvdXJlIHRyZWUKPgo+IFBvc3NpYmx5IGNhdXNl
ZCBieToKPgo+ICAjIyBsaW5rZXIgZmxhZ3Mgb3B0aW1pemF0aW9uCj4KPiAgQXMgcHJldmlvdXNs
eSBtZW50aW9uZWQsIHBrZ2NvbmYgbWFrZXMgb3B0aW1pemF0aW9ucyB0byB0aGUgbGlua2VyIGZs
YWdzIGluCj4gIGJvdGggdGhlIGNhc2Ugb2Ygc3RhdGljIGFuZCBzaGFyZWQgbGlua2luZyBpbiBv
cmRlciB0byBhdm9pZCBvdmVybGlua2luZwo+ICBiaW5hcmllcyBhbmQgYWxzbyBzaW1wbGlmaWVz
IHRoZSBgQ0ZMQUdTYCBhbmQgYExJQlNgIG91dHB1dCBvZiB0aGUgcGtnY29uZgo+ICB0b29sIGZv
ciBpbXByb3ZlZCByZWFkYWJpbGl0eS4KPgo+IFJlZjogaHR0cHM6Ly9naXRodWIuY29tL29wZW53
cnQvb3BlbndydC9wdWxsLzI4MzIKTmV2ZXIgc2VlbiB0aGlzLiBUaGVuIGFnYWluLCBJJ3ZlIG9u
bHkgZGVhbHQgd2l0aCB0YXJnZXQgcGFja2FnZXMuCj4KPiAtLSB5bmV6egoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5n
IGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53
cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=

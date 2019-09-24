Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CC4BD456
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Sep 2019 23:29:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8BEEybxyLJ2PKhimpFcOazvhbkR0IK7W0is5TFJX4Cw=; b=V3nOPa5Onl0En+
	fsWbtCFaKn5joEgCeSp5/Yx2zrgPLFchmd+u1rTtacMSy9Af4R6ajA7fMV3SE6yOLSuIAtlfQK4GC
	oLb0UCthgzz58XxwnnBzbF8MD4k2zkC8Cd0EYbxJfpuQqnwnk0BO/CujkGEiD7R7z4ID5aKuJBSRR
	MTXsrn4OrCi329Orry0djgX3nXrnBS0gF3CtxL978zYoKOYEQcp0iscPCtbIbLNabWvMvtTO5etLv
	NSfPwlbVaZ/8c6/yoCIoDb2447qCATZvsSaUWPjpDLEVqQx0Hr7X+ve7m+1hwKkIsZdVu6lROzWbH
	BkDzgmxLvow3Ev03UX2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCsN5-0007tT-UT; Tue, 24 Sep 2019 21:29:19 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCsMj-0007t2-FQ
 for openwrt-devel@lists.openwrt.org; Tue, 24 Sep 2019 21:28:59 +0000
Received: by mail-qk1-x742.google.com with SMTP id z67so3347164qkb.12
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Sep 2019 14:28:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=o9o7RyDrkufJS8gq872wq+52rt/H1zjFn1llWJLnVN0=;
 b=rOhLwgOVenatsY1kWdKlxUUwH2QuAWXdTPxHt6Jqbd+WTZPpWpwdpBrbEgVMsAYQuU
 zZaDKS9t/DjyBdFc1ZV9V6yaI39+KIyyikekk7KetVTu2UmYHbsjQItTHLvRZqXYsL4s
 OQVouwWvgshbtmLx9S9AnbnKNLN4BlY15QodNdqpmygUpagiqvxwTWZcTA3v+HtiKvlK
 SY0KpnXvHZIduH9JaIZ01ATZqhSF87UbuQuHLUOIWgGX6OgakC96TZWEN6b03fU16GQt
 scUvaW7UeTU8CYgRI2bcMFOi+GAgqFwqPWFj62NPZCRr2OxpbBWfwru5mEdno60v4bY3
 9mnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=o9o7RyDrkufJS8gq872wq+52rt/H1zjFn1llWJLnVN0=;
 b=jGDtH1GXWfnCeHa//TKBH72SYEfL69QDhCyHYW3yL1RNcWvNwnCikyFT5tc3HJyb/0
 W08BuK+ci8/Eo4p4UJekWb9JAVSZ4dEtTEgBUuGvW/iOWEOj0FYQh6g0rrNrCqle7Z8F
 N627yg4KPWBAYsShqX3HIHui0xJ+JGVsV/a3OR6B88OAGBjzLKt93Cs4FHaYCf1BrNKc
 Omc88WJWChdaffEWjcGLTPU/NqZDeKLXyZZJHv46azJJwObxe3a/DAAa1vbc44MFwSAP
 zsFRzJetIuyBC0r9XUZUpbdKHF8mgtp6C3i65e23pnXhKcYhEJVXeaQ64NUE5RTSHq1d
 6Bgg==
X-Gm-Message-State: APjAAAXXthKSPA/U094f2Qo4nHQerDjesyobVLpD9LjqZHvVZdHJuTmC
 3sRC5EVqn23fT50wiFxWNdGr8IYUSSJIFsObCKs=
X-Google-Smtp-Source: APXvYqzt5PJ8G91QIDYgXtKatK0Vz0dMtQNQmLS0utaymtm5SV1Mwnnm2EUqG6g7yE2CNsG8pH3UWNJUM3EfWGyifbE=
X-Received: by 2002:a37:2746:: with SMTP id n67mr225175qkn.368.1569360534332; 
 Tue, 24 Sep 2019 14:28:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190923073539.7493-1-ynezz@true.cz>
 <20190923073937.7890-1-ynezz@true.cz>
 <CAPxccB3ZF_E5UXgoha6hqnMcktWqY6N4uS6J7x714CPvC_XW0g@mail.gmail.com>
 <20190924204151.GE40628@meh.true.cz>
In-Reply-To: <20190924204151.GE40628@meh.true.cz>
From: Eneas Queiroz <cotequeiroz@gmail.com>
Date: Tue, 24 Sep 2019 18:28:44 -0300
Message-ID: <CAPxccB1ZGFx_i6moidZxh_cwmS_QGmrvvP_e1hCdyvHdBbnOAw@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_142857_543666_F9170048 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2] build: fix make kernel_menuconfig
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
 Thomas Albers <thomas.gameiro@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

U29ycnkgZm9yIHRoZSBkb3VibGUgcmVwbHksIFBldGVyLCB0aGlzIGRpZCBub3QgbWFrZSBpdCB0
byB0aGUgbGlzdC4KCk9uIFR1ZSwgU2VwIDI0LCAyMDE5IGF0IDU6NDIgUE0gUGV0ciDFoHRldGlh
ciA8eW5lenpAdHJ1ZS5jej4gd3JvdGU6Cj4KPiBFbmVhcyBRdWVpcm96IDxjb3RlcXVlaXJvekBn
bWFpbC5jb20+IFsyMDE5LTA5LTI0IDE3OjA2OjI4XToKPgo+IEhpLAo+Cj4gPiBUaGUgcHJvYmxl
bSBpcyB0aGF0IHdoZW4gc2NyaXB0cy9jb25maWcvbHhkaWFsb2cvY2hlY2stbHhkaWFsb2cuc2gg
aXMgcnVuLAo+ID4gaXQgd2lsbCBzdGlsbCB1c2UgdGhlIHN0YWdpbmdfZGlyL2hvc3QvYmluL3Br
Zy1jb25maWcgc2NyaXB0IHdpdGhvdXQKPiA+IFNUQUdJTkdfUFJFRklYIHNldC4KPgo+IGl0IGRv
ZXNuJ3Qgd29yayBsaWtlIHRoYXQgaGVyZSwgSSd2ZSBqdXN0IGFkZGVkIGZvbGxvd2luZyBpbnRv
IGNoZWNrLWx4ZGlhbG9nLnNoOgo+Cj4gICBlY2hvICIkKGNvbW1hbmQgLXYgcGtnLWNvbmZpZyki
ID4gJFRPUERJUi9tZWgubG9nCj4KPiBhbmQgbWVoLmxvZyBjb250YWlucyAvdXNyL2Jpbi9wa2ct
Y29uZmlnIGFmdGVyIGtlcm5lbF9tZW51Y29uZmlnIHJ1bi4KPgo+ID4gPiArRElTVFJPX1BLR19D
T05GSUc6PSQoc2hlbGwgd2hpY2ggLWEgcGtnLWNvbmZpZyB8IGdyZXAgLUUgJ1wvdXNyJyB8IGhl
YWQgLW4gMSkKPiA+IElmIHdlIGV4cG9ydCB0aGlzLCB0aGVuIHdlIGNhbiBjaGVjayBpdHMgZXhp
c3RlbmNlIGluCj4gPiB0b29scy9wa2ctY29uZmlnL2ZpbGVzL3BrZy1jb25maWcsIGFuZCBkZWNp
ZGUgd2hpY2ggcGtnLWNvbmZpZyB3ZSB3YW50Cj4gPiB0byBydW4uCj4KPiBpZiBJIHVuZGVyc3Rh
bmQgaXQgY29ycmVjdGx5IHRoaXMgZ2xvYmFsIGV4cG9ydHMgYXJlIG5vdCB3ZWxjb21lLgo+Cj4g
PiBUaGVuLCB3ZSBjYW4gdXNlIHRoZSB2YXJpYWJsZSBpbiBvdXIgcGtnLWNvbmZpZyBzY3JpcHQg
dG8gZGVjaWRlIHdoYXQKPiA+IHRvIHJ1biwgdXNpbmcganVzdCBwa2ctY29uZmlnLnJlYWwgYXMg
YSBmYWxsYmFjayBpZiBub3RoaW5nIGlzIGRlZmluZWQKPiA+IChhbHRlcm5hdGl2ZWx5LCB3ZSBj
YW4gZmFpbCBpbnN0ZWFkKToKPgo+IHNpbWlsYXIgYXBwcm9hY2ggd2FzIGFscmVhZHkgc3VnZ2Vz
dGVkWzFdIGJ5IFRob21hcyBvcmlnaW5hbGx5IGFuZCB3YXMgY29uc2lkZXJlZAo+IGJyaXR0bGUg
KGFuZCBJIGFncmVlZCB3aXRoIHRoYXQpLCBzbyBJJ3ZlIHJld29ya2VkIGl0IHRvIGN1cnJlbnQg
dmVyc2lvbi4KPgo+IDEuIGh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcGF0Y2gvMTE2MzEy
MC8KPgo+IC0tIHluZXp6CgpJJ3ZlIGdvdCB5b3VyIHBhdGNoIGFwcGxpZWQsIGFuZCBpdCBzdGls
bCBmYWlscyBtYWtlIG1lbnVjb25maWcgaWYgSQpzdGFydCBmcm9tIHNjcmF0Y2ggb3IgYWZ0ZXIg
bWFrZSAtQyBzY3JpcHRzL2NvbmZpZyBjbGVhbi4gIEkgaGF2ZW4ndAp0cmllZCBrZXJuZWxfbWVu
dWNvbmZpZyB5ZXQtLWl0IHdpbGwgaGF2ZSB0byBjb21waWxlIGEgbG90IG9mIHN0dWZmIGlmCkkg
c3RhcnQgZnJlc2guCgpJJ3ZlIHRyaWVkIHRvIHJ1biBpdCBsaWtlIHlvdSBkaWQsIGJ1dCBteSBt
ZWgubG9nIHBvaW50cyB0bwovaG9tZS9lcXVlaXJvei9zcmMvb3BlbndydC9zdGFnaW5nX2Rpci9o
b3N0L2Jpbi9wa2ctY29uZmlnLiAgSG93IHdpbGwKaXQgZ2V0IHBhc3QgJChUT1BESVIpL3N0YWdp
bmdfZGlyL2hvc3QvYmluLCBpZiB0aGF0J3MgdGhlIGZpcnN0CnRoaW5nLS1hdCBsZWFzdCBoZXJl
LS1pbiBQQVRIPwoKSSBjYW4gY2VydGFpbmx5IGFncmVlIHRoYXQgZ2xvYmFscyBhcmUgbm90IHJl
YWxseSB0aGUgYmVzdCB3YXkuICBUbwphdm9pZCB0aGF0LCB3ZSBjYW4gc2V0IERJU1RST19QS0df
Q09ORklHIGluc2lkZQp0b29scy9wa2ctY29uZmlnL2ZpbGVzL3BrZy1jb25maWcsIGFuZCBnbyBm
cm9tIHRoZXJlOgpESVNUUk9fUEtHX0NPTkZJRz0iJCh3aGljaCAtYSBwa2ctY29uZmlnIHwgZ3Jl
cCAtRXYKJ3N0YWdpbmdfZGlyL2hvc3QvYmluL3BrZy1jb25maWcnIHwgaGVhZCAtbiAxKSIKCldo
YXQgZG8geW91IHRoaW5rPwoKQ2hlZXJzLAoKRW5lYXMKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53
cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK

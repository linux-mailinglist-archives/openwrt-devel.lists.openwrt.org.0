Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1545918E4DA
	for <lists+openwrt-devel@lfdr.de>; Sat, 21 Mar 2020 22:52:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TY7RhqKz9DPNnPMujnx17OChpOoOy/JgQhm3cbs8xZI=; b=a7xj1rJjglObXF
	IwKR4CXSnORV181P4pr9MqdzvnJasAbEdUwm/xrtZuTRYTsWopZKD0oE4SEVp718wtvidutclwTEb
	oVr8fH1X0BaxAMoHpF4RMuSAH6AwW46SPjUbLcGoktDH2ooNuvyeVbOzgS1NsT5jInEkxXjeyZkEz
	zXGxsD9rMRnR1LoTGSMw/Na723XJbyOVLe41RbaRNoOa2MPictNTLs0hiFFdXlsJ4BReWi7P6RcJU
	+g1pUIW59NO+Aj+JHwFATtAnIU14t50dT4PqGcyEyv2TAZS6j86jxYe9Dr8VUUWO+mzNDuqLWepFj
	QadiTiXlVkgdDiOl2HPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFm2m-0003HA-RM; Sat, 21 Mar 2020 21:52:36 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFm2c-0003Gh-Tq
 for openwrt-devel@lists.openwrt.org; Sat, 21 Mar 2020 21:52:28 +0000
Received: by mail-oi1-x242.google.com with SMTP id k21so10669081oij.5
 for <openwrt-devel@lists.openwrt.org>; Sat, 21 Mar 2020 14:52:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=rbMHJfZLSJ38rVUkxTt40PuSPeCYZtg05zhGqiGviR8=;
 b=ltG5SMbBcLZjB+nVJwKKFfJBf/1QK7+bve/YCbahVBA8IZQUtDa5XnqnnWtJo+i8jZ
 826Kzpgq4XpQ7JDlyzwzxPEEAFGfN2S9AIU+sDVSUE+IetowO/0mMEEy0QeKxgVG2yqY
 VQXqHxC0xhQFIVtX91fIihyxfckYM4OszXqPcjZ+rLvZ2zLg2tPkTR4u39b5rHXdGBln
 T6bq/CGAShzaPRF4EDBzewzba2dgrX0Swwgi6CcQ6MnqHnK925HyXH0YH7DByXN3ZPA6
 XFPDHS6gRtnWais3x00+kNAjAJqysn9K7TdFL5d44RZttPzIHEuyZjF2RrSKSEBCRh56
 pXog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=rbMHJfZLSJ38rVUkxTt40PuSPeCYZtg05zhGqiGviR8=;
 b=JFtxPVbINxxMXKwTANT2TM8C62GqFz4Q/eqL3tzgtoocZa/5hFTMWP4TloqCIdm7yr
 SLUjZdC0Bbl9N6/s7SKRR63A6tYPbl3Pn/jTdT0BFwg47FEvajtaihdi2+MnIrnUpDYA
 kBzbzMvz3jaTlbquq6BYoTEMaCkazl22hqF4BrUTSGHj6JYKxiUcg/KtZpUtUNHgdPg0
 bJg4xbTtBPxOErCUwrHCttxOc4bhPg6YHy2Lsei1g7p4QJEOK2tD6Rmz7eNSru9PFVUf
 mzA2J+LcEHAZZPz0Cb/5CsFlpNWkpI5ciJvvVrwxn/Zg9QuLGTz9EaGVbi+j5FEJbygE
 jjhw==
X-Gm-Message-State: ANhLgQ1ve1L2S+Tq4KScuPQquTC9S5CR7qjGTRLwDr44RUE4mIATjryR
 eo1GIblFmV/rSQlE2FO7LI77zL7uK9OGE6jBuHY=
X-Google-Smtp-Source: ADFU+vvYuURyRCMsf3/YcfL5nb2X6CCq4+UDkHQ8YwljxSeGtVI0H04/AORSlX+AVfmIDFaz9W0kRRnKy+h/3nJGJ+c=
X-Received: by 2002:aca:d68a:: with SMTP id n132mr12372603oig.40.1584827545706; 
 Sat, 21 Mar 2020 14:52:25 -0700 (PDT)
MIME-Version: 1.0
References: <20191230065453.3067-1-zajec5@gmail.com>
 <01d301d5bf23$4231faf0$c695f0d0$@adrianschmutzler.de>
 <CACna6rx6KthQmnLa-uF8UdvFHzxWfr_oS+NJ4QRtfCChCDarXQ@mail.gmail.com>
In-Reply-To: <CACna6rx6KthQmnLa-uF8UdvFHzxWfr_oS+NJ4QRtfCChCDarXQ@mail.gmail.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Sat, 21 Mar 2020 14:52:14 -0700
Message-ID: <CAKxU2N9Pm=aFJWiUF7GUSQxEOddDgW_=6Bh1Pahr_m-FHgxdqA@mail.gmail.com>
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_145226_988733_47DE1C2F 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] samba36: log error if getting device
 info failed
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
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gU2F0LCBNYXIgMjEsIDIwMjAgYXQgMjozNyBQTSBSYWZhxYIgTWnFgmVja2kgPHphamVjNUBn
bWFpbC5jb20+IHdyb3RlOgo+Cj4gT24gTW9uLCAzMCBEZWMgMjAxOSBhdCAxNjoxMCwgPG1haWxA
YWRyaWFuc2NobXV0emxlci5kZT4gd3JvdGU6Cj4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0t
LS0tCj4gPiA+IEZyb206IG9wZW53cnQtZGV2ZWwgW21haWx0bzpvcGVud3J0LWRldmVsLWJvdW5j
ZXNAbGlzdHMub3BlbndydC5vcmddCj4gPiA+IE9uIEJlaGFsZiBPZiBSYWZhbCBNaWxlY2tpCj4g
PiA+IFNlbnQ6IE1vbnRhZywgMzAuIERlemVtYmVyIDIwMTkgMDc6NTUKPiA+ID4gVG86IG9wZW53
cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPiA+ID4gQ2M6IFJhZmHFgiBNacWCZWNraSA8cmFm
YWxAbWlsZWNraS5wbD4KPiA+ID4gU3ViamVjdDogW09wZW5XcnQtRGV2ZWxdIFtQQVRDSF0gc2Ft
YmEzNjogbG9nIGVycm9yIGlmIGdldHRpbmcgZGV2aWNlIGluZm8KPiA+ID4gZmFpbGVkCj4gPiA+
Cj4gPgo+ID4gYXJlIHlvdSBhd2FyZSBvZiBodHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9vcGVu
d3J0L3B1bGwvMjM2OCBvciBpcyB0aGlzCj4gPiBqdXN0IG1lYW50IGZvciBiYWNrcG9ydGluZz8K
Pgo+IEhleSwgSSB3YXNuJ3QgYXdhcmUgb2YgdGhhdCwgdGhhbmtzLCBGV0lXIEkgcHVzaGVkIG15
IHBhdGNoLCBsZXQncyBzZWUKPiBob3cgZHJvcHBpbmcgc2FtYmEzNiBnb2VzIG9uLgpJIGZpcnN0
IG5lZWQgdG8gcmViYXNlIHRoYXQgcGF0Y2guCgprc21iZCBhbHNvIG5lZWRzIHRvIGJlIHVwZGF0
ZWQgYXMgc2V2ZXJhbCBTTUJ2MSBidWdzIHdlcmUgZml4ZWQKKG5vYm9keSBzaG91bGQgYmUgdXNp
bmcgdjEgYnV0IGl0J3Mgc3RpbGwgdXNlZCkuCj4KPiAtLQo+IFJhZmHFggo+Cj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBvcGVud3J0LWRldmVsIG1h
aWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPiBodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=

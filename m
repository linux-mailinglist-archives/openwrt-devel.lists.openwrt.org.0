Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 135C6F8CE9
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 Nov 2019 11:37:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C3GPE+2lZSMEKWEBJpoX++TAbvI4fxGvNqtfe3SnKF8=; b=kRD70nRJ/31VXO
	o1pg5KWaOlEiE2Lc++A+HaT/NXRfV+9czRIRxdx6NRiSewXTflQpQKGCbnSiO/lWKLVOT58zw7BTY
	IiOTZocciEZEm1sE1lpJK7ySGl9or/ucx+eSMpXmz7tWRgHntc56xedwFEZ0dqx2fCSmUqdlycbhc
	TY5VZLEhjfLCe8a0GP6J6/f8fC2ijBavS//DgY/B8YOsWmOzwTd4c0mFr1b7V58OMApjPL0p5EgAY
	ImKCALi94vfEAQwj8trs/A7x93JykHjVxyKXNnnb6QCma7ea7Oa45/64goL87ZWFt/n+x1piinSCt
	0Tg8TrDtSgh8BXeqwc9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUTYN-00042g-4l; Tue, 12 Nov 2019 10:37:43 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUTYG-00042H-C1
 for openwrt-devel@lists.openwrt.org; Tue, 12 Nov 2019 10:37:37 +0000
Received: by mail-lf1-x141.google.com with SMTP id i26so1350425lfl.2
 for <openwrt-devel@lists.openwrt.org>; Tue, 12 Nov 2019 02:37:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=dJkfC6PbuNG3BlhyydBJIongVVgdt+9NGuXda7BUioM=;
 b=uShhw1dsEU0qiKYt7SAS5mthXOs3czcxn8Bg/AP4IjgM1bic+bgyp1X8ToluZG5p98
 wCDJBHZmmvuCT1OX8JRPV1YhBwDqfKmKZHxc5PcL7r6cXy9MWwwpnMqiFOunv7fgM3mG
 UIfV1WJcwK2HCS87J152bkTBxYQOi1fp9DnGKAtj+Kh3LNnOCcmMxFekTy4IQSO5A/WQ
 UvYacpaHrX0iFaydnrVULkQBiCNcbJyuw8dljFDf+A6ZWQgC/wynWpZ24hPr3rIPVAHj
 bgcZkvCUgJJ1LC+OtBWD1pYBXS2PmoOoYCVL9Bkz8UnE+K1MM79wDwp5kP9YJns7cmh1
 y+JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=dJkfC6PbuNG3BlhyydBJIongVVgdt+9NGuXda7BUioM=;
 b=Iegwd2iK61IZSmLwFBBffjaEsRwb2GuOUl9046IIzcolm5a0AoJJruBRWpDlnPGYYC
 9RdISaBYoSShMK72mOoivjg4dNUkaBYzJh7Wpph87jKUliMSFIihIVLgPWrb5Nkfi7k+
 TE/UNREUDTgzuCpD4Tj0EzE7UMRAr0ajGwHSphK6btl8mA/MRqCfnyM3pQA0LBLqIvE5
 80y5ieQS43avEP06mPNkpLb04WJkgd8fVrdKf8QuneYjHkTbxmJcireEtrbcvsQfVm2T
 6VDlg3lA8M2rRTcsn+zZYXusCbKt5clIFKHStnxnKXr1bz1xkHEhXPjkbncDr9bYAq3Y
 /9oQ==
X-Gm-Message-State: APjAAAW5K+fm4OeigZ6YGUP7uFWag4jRTQoWP1+2DbU4eGehDnSxtZLR
 pr4gY+628hE1fIEpe2lb5wETJivE7rV7AGn8sN1DE2sc
X-Google-Smtp-Source: APXvYqynEjPjozJn+EsAbeA3AVp98ndtjFE0QCvOdjEdoFXqW79LFeS6FqAIefR6lpZcPfp5TbCgaEOriDEldjyzzqs=
X-Received: by 2002:a19:494d:: with SMTP id l13mr8926538lfj.66.1573555054142; 
 Tue, 12 Nov 2019 02:37:34 -0800 (PST)
MIME-Version: 1.0
References: <20191112081625.27695-1-ynezz@true.cz>
 <CAECwjAjN3938FFjc3KJ2pQ=KP66EKD3s4RiWzW50LLZ+RiDrBQ@mail.gmail.com>
 <20191112091227.GB71646@meh.true.cz>
In-Reply-To: <20191112091227.GB71646@meh.true.cz>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Tue, 12 Nov 2019 18:37:21 +0800
Message-ID: <CAECwjAizD_AWQotEwG2QtHfJzxH9dveDbBEtrcjSvxG6rOSRPA@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_023736_433817_E8778255 
X-CRM114-Status: GOOD (  20.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] build: make GCC version 6+ minimal host
 build requirement
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

T24gVHVlLCAxMiBOb3YgMjAxOSBhdCAxNzoxMiwgUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5j
ej4gd3JvdGU6Cj4KPiBZb3Vzb25nIFpob3UgPHlzemhvdTR0ZWNoQGdtYWlsLmNvbT4gWzIwMTkt
MTEtMTIgMTY6MjY6MTRdOgo+Cj4gSGksCj4KPiA+IE5vdCBxdWl0ZSBzdXJlIGhvdyBtdWNoIGJl
bmVmaXQgZW5mb3JjaW5nIC1XZXh0cmEgY2FuIGJyaW5nIHRvIHRoZQo+ID4gd2hvbGUgY29kZSBi
YXNlLgo+Cj4gSSdtIGFkZGluZyAtV2V4dHJhIGZvciBzb21lIHRpbWUgYWxyZWFkeSB0byBhbnkg
QyBwcm9qZWN0IEkgdG91Y2gsIG5vYm9keSBoYXMKPiBvYmplY3RlZCBhZ2FpbnN0IGl0IHNvIGZh
ci4gSSdtIGFkZGluZyBpdCBiZWNhdXNlIEkgdGhpbmssIHRoYXQgdGhlIGxhdGVzdAo+IGNvbXBp
bGVycyBhcmUgcHJvZHVjaW5nIHVzYWJsZSB3YXJuaW5ncywgbGVzcyBmYWxzZSBwb3NpdGl2ZXMg
YW5kIHRoYXQgaXQKPiBzaG91bGQgYmUgb25lIG9mIHRoZSBzdGFuZGFyZCBoYXJkZW5pbmcgb3B0
aW9ucyBmb3IgYW55IG5ldHdvcmsgZmFjaW5nCj4gcHJvamVjdC4gSSBzZWUgLVdleHRyYSBqdXN0
IGFzIGFub3RoZXIgcGFpciBvZiByZXZpZXcgZXllcyBmb3IgbWUsIGV2ZW4gaWYKPiBpdCdzIHBy
b3ZpZGVkIGJ5IHRoZSBtYWNoaW5lLgoKSSBhZ3JlZSwgZXNwZWNpYWxseSB3aGVuIGl0IGNvbWVz
IHRvIHF1YWxpdHkgYXNzdXJhbmNlLgoKPgo+IEl0J3MganVzdCBvbGRlciBHQ0MgdmVyc2lvbnMg
bWFraW5nIC1XZXh0cmEgUElUQSwgc28gaWYgd2UgZGVjaWRlIHRvIGtlZXAKPiBzdXBwb3J0IGZv
ciBnY2MtNC44KywgdGhlbiBpdCB3b3VsZCBwcm9iYWJseSBtYWtlIHNlbnNlIHRvIGVuYWJsZSAt
V2V4dHJhIGZvcgo+IGdjYzYrLgoKVGhpcyBpcyBub3QgYmFkLiAgT25seSBmZWVkaW5nIHRob3Nl
IG9wdGlvbnMgdG8gdG9vbGNoYWlucyB3aXRoIGRlY2VudApzdXBwb3J0IG9mIHRoZW0sIHdpdGgg
bGVzcyBjb25mdXNpbmcgZmFsc2UgcG9zaXRpdmVzLiAgVXNlcnMgd2l0aApiZXR0ZXIgdG9vbGNo
YWlucyB3aWxsIG5vdGljZSB0aGVtIGFuZCB1c2VycyB3aXRoIG9sZCB0b29sY2hhaW5zIHN0aWxs
CmJlbmVmaXQgZnJvbSBpdC4KCj4KPiA+IEV4Y2x1ZGluZyBzdXBwb3J0IGZvciB2YW5pbGxhIENl
bnRPUzcgd2lsbCBjZXJ0YWlubHkgY2F1c2UgaW5jb252ZW5pZW5jZSBmb3IKPiA+IGxhcmdlIG51
bWJlcnMgb2YgdXNlcnMuCj4KPiBXZWxsLCBJIGRvbid0IHNlZSBhbnl0aGluZyBiYWQgYWJvdXQg
c3Vuc2V0dGluZyBvZiBvbGQgdG9vbHMuIFRoaXMgaXMgbWFzdGVyLAo+IHNvIG5leHQgT3Blbldy
dCByZWxlYXNlIHNvbWV3aGVyZSBpbiB0aGUgMjAyMCwgc28gcHJvYmFibHkgbm90IGEgYmlnIGRl
YWwsCj4gcmlnaHQ/IFRoZXkncmUgZ29pbmcgdG8gaW5zdGFsbCBweXRob24zIGFueXdheSBhcyB3
ZWxsLgo+Cj4gPiBUaGF0IGlzIHByb2JhYmx5IG1vcmUgc28gdG8gc2VyaW91cyBpbmR1c3RyaWFs
IHVzZXJzLgo+Cj4gSWYgSSdtIGFibGUgdG8gaW5zdGFsbCBnY2MtNC44IG9uIG15IGxhdGVzdCBz
dGFibGUgRGViaWFuLCB0aGVuIEkgYXNzdW1lLCB0aGF0Cj4gaXQgc2hvdWxkIGJlIHJlbGF0aXZl
bHkgc3RyYWlnaHQgZm9yd2FyZCB0byBpbnN0YWxsIHNvbWUgZGVjZW50IEdDQyB2ZXJzaW9uIG9u
Cj4gPHlvdXItc3RhYmxlLWRpc3Rybz4gYXMgd2VsbC4KCkhvdyBvbGQgdG8gYmUgb2xkIHRoYXQg
aXMgYSBxdWVzdGlvbiB0byBhc2suICBJbiB0aGUgc3BlY2lmaWMgY2FzZSBvZgpyaGVsNy9jZW50
b3M3LCBJIHN1cHBvc2UgaXQgaXMgc3RpbGwgd2lkZWx5IGRlcGxveWVkIGFuZCB1c2VkLiAgSXQg
aXMKc3VwcG9zZWQgdG8gaGF2ZSBhdCBsZWFzdCAxMCB5ZWFycyBzdXBwb3J0IGJhY2tlZCBieSBy
ZWRoYXQuICBJdHMKInJldGlyZW1lbnQiIGlzIHN1cHBvc2VkIHRvIGJlIGF0IHllYXIgMjAyNCB3
aXRoIGV4dGVuZGVkIGxpZmUtY3ljbGUKc3VwcG9ydCBub3QgeWV0IGRlY2lkZWQuCgpOYWgsIEkg
Y2Fubm90IHNwZWFrIGZvci9yZXByZXNlbnQgcmhlbC9jZW50b3MgY29tbXVuaXR5LiAgSSBoYXZl
IG5ldmVyCm93bmVkIGEgcmVkIGhhdC4KClB5dGhvbjMgaGFzIGJlZW4gYXJvdW5kIGZvciBtb3Jl
IHRoYW4gMTAgeWVhcnMgYW5kIGl0J3Mgbm8gc3VycHJpc2UKdGhhdCBpdCBzaG91bGQgYmUgcmVh
ZGlseSBhdmFpbGFibGUuICBFdmVuIHRoZSBlb2wgY2VudG9zNiBjb3VsZCBoYXZlCml0IHdpdGgg
ZXBlbCBlbmFibGVkLiAgV2l0aCBjZW50b3M3LCBJIGFtIG5vdCBhd2FyZSBvZiBhbnkgb2ZmaWNp
YWwKd2F5cyB0byBpbnN0YWxsIG5ld2VyIHZlcnNpb25zIG9mIHNvZnR3YXJlLCBvbmx5IGJ1Z2Zp
eGVzLiAgSSB0cmllZApmb3IgYSBmZXcgdGltZXMgd2l0aCBwYWNrYWdlcyBwcm92aWRlZCBieSBT
b2Z0d2FyZUNvbGxlY3Rpb25zLm9yZywgYnV0Cml0J3MgZGVmaW5pdGVseSBub3QgInN0cmFpZ2h0
Zm9yd2FyZCIgZW5vdWdoIGluIG15IG9waW5pb24uCgo+Cj4gSWYgd2UgZGVjaWRlIHRvIGtlZXAg
Z2NjLTQuOCBzdXBwb3J0LCB3b3VsZG4ndCBpdCBtYWtlIHNlbnNlIHRvIHVzZSBnY2MtNC44IG9u
Cj4gYnVpbGRib3RzIGFzIHdlbGw/IFlvdSBrbm93LCBpbiBvcmRlciB0byBjYXRjaCBzaW1pbGFy
IGlzc3VlcyBkdXJpbmcgUUEKPiBwcm9jZXNzLgo+Cj4gSSBjYW4gY2VydGFpbmx5IGFkZCBnY2Mt
NC44LCBnY2MtNC45LCBnY2MtNSB0byB0aGUgQ0kgY29tcGlsZXIgbWl4IChjdXJyZW50bHkKPiBo
YXMgZ2NjLTcsIGdjYy04LCBnY2MtOSBhbmQgY2xhbmctOSBjb21waWxlcnMpLCBidXQgdGhpcyBp
cyBnb2luZyB0byByZXN1bHQgaW4KPiB0aGUgNiBhZGRpdGlvbmFsIGNvbXBpbGUvcnVuIHRlc3Rz
ICgzICogcmVsZWFzZS9kZWJ1ZyksIHNvIGl0IG1ha2VzIG1lIHdvbmRlcgo+IGlmIGl0J3MgcmVh
bGx5IHdvcnRoIHRoZSByZXNvdXJjZXMvZWZmb3J0cy4KPgo+IC0tIHluZXp6CgpJIHRoaW5rIHdl
IGFncmVlIHRoYXQgd2hhdGV2ZXIgdGhlIGRlY2lzaW9uIGlzIGF0IHRoZSBlbmQsIGl0J3MganVz
dAp0cmFkZS1vZmYuICBNeSBjb25jZXJuIGlzIHRoYXQgY2xvc2luZyBkb29ycyBmb3Igc3VwcG9y
dCBvZiBnY2MgNC44IGlzCmJlaW5nIHRvbyByaWdpZC4gIE5vdGUgdGhhdCB3ZSBhcmUgdGFsa2lu
ZyBhYm91dCBob3N0IGJ1aWxkIHdpdGggaG9zdAp0b29sY2hhaW4gd2hvc2UgaW5wdXQgd2UgY29u
dHJvbCBhbmQgd2hvc2UgcHJvZHVjdCBvbmx5IHJ1bnMgb24gdGhlCmhvc3QgaXRzZWxmIGF0IGJ1
aWxkIHRpbWVzLgoKUmVnYXJkcywKICAgICAgICAgICAgICAgIHlvdXNvbmcKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGlu
ZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVu
d3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK

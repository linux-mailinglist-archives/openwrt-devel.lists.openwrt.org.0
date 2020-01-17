Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BED051409FB
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 Jan 2020 13:50:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fMQlI+fm//QpnMTqT4pB7JJQO4XGnkDT6TgYpYrzICc=; b=LXUGq1Z98MTELW
	fZtGHFk+Dtxdpl4C7DELCexrc2Hjqlw9Ay1dPfl4kLVW8V0bWRhMtiLxR1JnKDMeIwZuHkS+Ibwa+
	aLWebrOto4K1u+L6kugaoIpH1NeyhwbAWFjgyzoEmTuPVgDhU3Q7yXl9+PjPthzT/h52O51hxculv
	QCe5CYxI30eU2XNuiTV7qyIvsnvuyRE4J3f50mD8Eopt2V49O1tZR39cFfs8MWV4tIfoVYSFgHqa1
	so4mLjqR2d7JAhKQx3W0txY2OytEYLQwLpJtzaWD7urUE0gGjoVbVwWaL28AZ96y+pwrv7srC/Pw2
	zSlT5StKMuf/p2FY+g6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isR4m-0001DB-Up; Fri, 17 Jan 2020 12:50:12 +0000
Received: from mail-il1-x136.google.com ([2607:f8b0:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isR4T-0001Ch-NE
 for openwrt-devel@lists.openwrt.org; Fri, 17 Jan 2020 12:49:58 +0000
Received: by mail-il1-x136.google.com with SMTP id f10so21167173ils.8
 for <openwrt-devel@lists.openwrt.org>; Fri, 17 Jan 2020 04:49:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=T//XbnYl2zCRYKVIoKqWohsCgjpZ6kYhdyak2aAaE0U=;
 b=F+ngviGEJfZvTKyNAJpNMFjchE5+68D1ERWR6XnmclFKP56Pt1RVl1aV1Sx1ckFkIw
 dFrhhSrL5t2QTfk4uyPbcXBWhkimuAjtyLyBLkofM5WqqhXdqhi/6zlX9FilZNmqDkcx
 Sb9+bAgQGcHux1fxULuCfNPTRATG7V85FEwhTQjg0+GI3rNbFHzVnuKiqbxY5P7fOqDd
 a7rcXygGCCE590RZIEjM5OiZU8tf5CaL80OAfuPJUDrH5DkgzzdBuIulvsb6DuXCcJQl
 YLMRzPpxPIUf1LDTlpL/oSqR+YGK434H0iXS7F3WB/JE4wL+ThdjhF6n9zPFoduG5tjd
 7r9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=T//XbnYl2zCRYKVIoKqWohsCgjpZ6kYhdyak2aAaE0U=;
 b=dRXys1wGefbjR9VRRVTXEVoPe3BzDtT+HdZNM0JGlOZDO6qMQ8nrBMwCxnEI2+Teiu
 zuWvJc95fohwoT1Gd6ng8HRP6uX7g55KwHHLh9T2SZAvrzKGGkR/sUX4VzKT2DBmXnbY
 M8KPUlRWbRT8m4lHXuaRFvbV24mWjCAjBcvGa1/kMiQNAI1Ans0XF4d2NwU6CITcLAhj
 CIY5k+KQpIuc+Cw4L632ju6yD2Rz5Wmx3ZcC0tgdkVmG0agubEE2vFPNUqbBuaAeZXV3
 mrQtQsyyCGF3nuy9Vt6CWtOlL64LGtDMIiNQRgtzpqcp87Y58xPjrybPxqs880zIJt6K
 HPeA==
X-Gm-Message-State: APjAAAVrDIWSiuxeAF/3ZdJkHiubjUbx+MZfzZ5AU4iVec9NV+8dfz8f
 iRnI8AqSAZot4nVGGr6wvqJsX0ZkYktsyqIxIJ8niA==
X-Google-Smtp-Source: APXvYqyNLjHIwOJyxK0aajqyoOj+XJFj14LaVSA2JlgWV+OFJ3ywRIdmcI2IshoqS1xoYuXXJhSd2MuF9oSXW5VLcq0=
X-Received: by 2002:a92:9107:: with SMTP id t7mr2843019ild.51.1579265392142;
 Fri, 17 Jan 2020 04:49:52 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a6b:a0b:0:0:0:0:0 with HTTP;
 Fri, 17 Jan 2020 04:49:51 -0800 (PST)
In-Reply-To: <c0dd994d-fb68-1845-60cb-2dfcc3d5455a@hauke-m.de>
References: <c0dd994d-fb68-1845-60cb-2dfcc3d5455a@hauke-m.de>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Fri, 17 Jan 2020 13:49:51 +0100
Message-ID: <CAKR_QVKTqZ5jUXyduYh=tPp2sOs_xeHWmt9-YD2xEZmF3ffdPw@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_044953_787946_C528E772 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:136 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] OpenWrt 20.X release plans
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
Cc: michal.cieslakiewicz@wp.pl, hauke@hauke-m.de, ynezz@true.cz,
 pgwipeout@gmail.com, dev@andreas-ziegler.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gMTYvMDEvMjAyMCwgSGF1a2UgTWVocnRlbnMgPGhhdWtlQGhhdWtlLW0uZGU+IHdyb3RlOgo+
IEhpLAo+Cj4gSSBtZWV0IHdpdGggam93IGFib3V0IDIgd2Vla3MgYWdvIGFuZCB3ZSB0YWxrZWQg
YWJvdXQgYSBsb3Qgb2YgT3BlbldydAo+IHJlbGF0ZWQgc3R1ZmYsIG9uZSBvZiB0aGUgdG9waWNz
IHdhcyB0aGUgcmVsZWFzZSBhZnRlciAxOS4wNy4KPgo+IEFzIHRoZSAxOS4wNyByZWxlYXNlIGlz
IG5vdyBkb25lLCBJIHdvdWxkIGxpa2UgdG8gZm9sbG93IHVwIG9uIHRoaXMgdG9waWMuCj4KPiBX
ZSB0aG91Z2h0IHRoYXQgdGhlIHRpbWUgYmV0d2VlbiB0aGUgMTkuMDcgYnJhbmNoIGFuZCB0aGUg
ZmluYWwgcmVsZWFzZQo+IHdhcyB3YXkgdG9vIGxvbmcsIHRoaXMgc2hvdWxkIGJlIG11Y2ggc2hv
cnRlciBpbiB0aGUgbmV4dCByZWxlYXNlLCB3ZQo+IHNob3VsZCB0YXJnZXQgOCB3ZWVrcyBmb3Ig
dGhhdC4KPgo+IE15IHByZWZlcnJlZCB0aW1lbGluZSB3b3VsZCB0aGUgdGhlIGZvbGxvd2luZzoK
PiAqIEJlZ2lubmluZyBvZiBGZWJydWFyeTogZnJlZXplIG1hc3RlciBmb3IgYmlnIGNoYW5nZXMg
KGFkZGluZyBuZXcKPiBib2FyZHMgaXMgbm8gcHJvYmxlbSkKPiAqIEJlZ2lubmluZyBvZiBNYXJj
aDogYnJhbmNoIG9mZiAyMC4zIHJlbGVhc2UgYnJhbmNoCj4gKiAxIHdlZWsgYWZ0ZXIgdGhlIGJy
YW5jaCB3YXMgY3JlYXRlZDogdGFnIGFuZCBidWlsZCAyMC4zLXJjMQo+ICogMyB3ZWVrcyBsYXRl
ciB0YWcgYW5kIGJ1aWxkIDIwLjMtcmMyCj4gKiAzIHdlZWtzIGxhdGVyIHRhZyBhbmQgYnVpbGQg
MjAuMyBmaW5hbAo+Cj4gVGhlbiB3ZSB3b3VsZCBkbyB0aGUgbmV4dCBmaW5hbCByZWxlYXNlIGlu
IE1heSAyMDIwLgo+Cj4gVGhpcyBwbGFuIGlzIGJhc2VkIG9uIHVzaW5nIGtlcm5lbCA0LjE5LCBp
ZiB3ZSB1c2Uga2VybmVsIDUuNCBJIHdvdWxkCj4gYXNzdW1lIHdlIGhhdmUgdG8gc2hpZnQgYWxs
IGRhdGVzIGJ5IDMgbW9udGhzLCBzbyBicmFuY2ggb2ZmIGluCj4gYmVnaW5uaW5nIG9mIEp1bmUg
YW5kIGZpbmFsIHJlbGVhc2UgaW4gQXVndXN0Lgo+CgpBbmQgdGhlbiBjb21lIHN1bW1lciB2YWNh
dGlvbnMgYW5kIG90aGVyIHJlYXNvbnMgdG8gbm90IGJlIGFibGUgdG8KZmluaXNoIGl0IG9uIHRp
bWUgc28gaXQgd291bGQgYmUgZGVsYXllZCBwcm9iYWJseSBldmVuIGZldyBtb3JlCm1vbnRocy4u
LgoKT24gMTYvMDEvMjAyMCwgUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4gd3JvdGU6Cj4K
PiBZZWFoLCB3ZSdyZSBhbGwgYXdhcmUgYWJvdXQgdGhhdC4gSWYgd2UgZGVjaWRlIHRvIHNraXAg
NC4xOSwgd2UncmUgcGFydGlhbHkKPiB0aHJvd2luZyBhd2F5IGEgbG90IG9mIHdvcmssCgpZb3Ug
c2FpZCBpdC4gVGh1cyBpdCdzIGJldHRlciB0byByZWxlYXNlIGJhc2VkIG9uIDQuMTkKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwg
bWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0
cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK

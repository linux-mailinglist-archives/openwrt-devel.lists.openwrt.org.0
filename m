Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A852E473AC
	for <lists+openwrt-devel@lfdr.de>; Sun, 16 Jun 2019 09:36:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z32en47LI8VIdX8hZP4xM7KB1f93msB+6t7tq0Hxmrw=; b=tm7kskb4NR08YV
	eCY2ys+2UgaQwBXpnf8Uh54Myov+v3CPwqBRIuAhnoC0l3+uDlnhFBUIjMY+f0lUKHlssMNz8l6py
	dSJbu/Bgxq6zxzqzf3KuWCELoXylcLhoGYZnfKim0v7eWDFxtjqxciWdJQ8eh2EcWlCzMJDTDrNb9
	5imf55ofbNVAaOo+U681I/U9sedIUB0fUr9mSAlws21RQ4OI7WPrg6N5jdrdZrwXYD7eSkmOVw5yv
	IcMSByJdG2JqiBGvpz/v4pnofZBerzPi7pGnPq/GvFZdUZrYR1yy1Z+axWp+gq8tG0mpB13BVvd11
	OZc3DzqKzysTCgNe2Xbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcPhx-0002O2-St; Sun, 16 Jun 2019 07:36:09 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcPhf-0002Nf-Ai
 for openwrt-devel@lists.openwrt.org; Sun, 16 Jun 2019 07:35:52 +0000
Received: by mail-qk1-x742.google.com with SMTP id p144so4366298qke.11
 for <openwrt-devel@lists.openwrt.org>; Sun, 16 Jun 2019 00:35:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=L6X8D5gbJHqdgIyDvAngLKXwrDgxjzMn1SSlH+No86Q=;
 b=lfrMcLt3eH5achKtr0bNbzKexstDywyeJ3FdiiOH6OVxfDvL5NWcXsNrTVssgFrmd2
 BGmei9aJXte3XBH9NWdzMGt0JbNRbxAwUsbYJsQxNll2qsAV7vvQaB26CsIo3xB/Cegh
 I0j2A77CZ0KZnssH0/h9naavR9EmiYux4C6N9IvVZeYKtdFBUCgs7ff+Azu1sS35tqe8
 ngDl6+dF0vXQDkXkEJEbYd7p4/cyaXyGCx+BRx4uHOJXioCHKEjqbPoL9Jcs43GGDylq
 /pfzu3WSkDDnnn7DmAaR6lAolkMA08b4Es9qhgu65MpbsOts6bXFJp4eKUYAbd3KgqGE
 XFRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=L6X8D5gbJHqdgIyDvAngLKXwrDgxjzMn1SSlH+No86Q=;
 b=q1XuixJcqCqPRPnZuN9h/8KCrx+E9wTrhXrVhqC1eGQ9HD0nGVl3f86nUcMIJ9DTHK
 CHEz1b0nk5Uvh3zbNi4WSuDnZOXrQmluTQa36E9Dxg7JyKddfC1U0pVd3RNt4ZrDAhJW
 2RPxOV1ol92zj8cuxXSxLEEzqM+fwmhNSb7NQ/Q5Y4NftUz+pPyE/D5OPg5kDU/oSd7h
 9XBsfbssoXrJOmMFe8raI3NbraoLYH3CBPe5gJdfdDmBizEXhGNG8WF8nYNI7s3tYZwE
 bctP+sw2YgY53Y+Cpt+N4XPt+UccKuy8wG7e363aKMZ+UCBdwmVoSFimXWDCUgvT4fnL
 XXvg==
X-Gm-Message-State: APjAAAVtFPPB4hoWTtTc2EhB4CFgDb+KxxnzcR/VUfeuyboFWuLWo7v0
 hdLmno/pCJbQRSqtZCx3MGOQlLg3nnVMUHRd9NarQw==
X-Google-Smtp-Source: APXvYqynT0ZRyugYIVk+xe/18fcHdC4OVzzEbe0Nzi2GrR2S+jjiys0Tjuut2fJkdioYgx0TtLaEgXDVlCrTVg8/kEs=
X-Received: by 2002:a05:620a:5b1:: with SMTP id
 q17mr17709328qkq.174.1560670549858; 
 Sun, 16 Jun 2019 00:35:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190614110947.10540-1-avalentin@marcant.net>
 <20190614110947.10540-3-avalentin@marcant.net>
 <CAJLcKsGT23Knu=PzbP3q9KfPPa-2eKsEOWYEgGqz7FdKhVcBtw@mail.gmail.com>
 <6ed0fa7e-2c12-e3a9-84c2-524c2809d301@marcant.net>
In-Reply-To: <6ed0fa7e-2c12-e3a9-84c2-524c2809d301@marcant.net>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Sun, 16 Jun 2019 09:35:38 +0200
Message-ID: <CAJLcKsHBL08j8+6wjuAg11P9d3n5Mvf_Q9FX58bY5dekrA67Ew@mail.gmail.com>
To: Andre Valentin <avalentin@marcant.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_003551_395414_D503DF69 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 2/3] netsupport: improve xfrm module
 support
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gU3VuLCBKdW4gMTYsIDIwMTkgYXQgMTo1MCBBTSBBbmRyZSBWYWxlbnRpbiA8YXZhbGVudGlu
QG1hcmNhbnQubmV0PiB3cm90ZToKPgo+IEhpIQo+IEFtIDE1LjA2LjE5IHVtIDIxOjM1IHNjaHJp
ZWIgSGFucyBEZWRlY2tlcjoKPiA+IEhpLAo+ID4KPiA+IE9uIEZyaSwgSnVuIDE0LCAyMDE5IGF0
IDE6MTAgUE0gQW5kcsOpIFZhbGVudGluIDxhdmFsZW50aW5AbWFyY2FudC5uZXQ+IHdyb3RlOgo+
ID4+Cj4gPj4gLXN3aXRjaCB0byBtb2R1bGUgYXV0b3Byb2JlCj4gPj4gLWV4Y2x1ZGUgNC45IGtl
cm5lbAo+ID4+Cj4gPj4gU2lnbmVkLW9mZi1ieTogQW5kcsOpIFZhbGVudGluIDxhdmFsZW50aW5A
bWFyY2FudC5uZXQ+Cj4gPj4gLS0tCj4gPj4gIHBhY2thZ2Uva2VybmVsL2xpbnV4L21vZHVsZXMv
bmV0c3VwcG9ydC5tayB8IDQgKystLQo+ID4+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQo+ID4+Cj4gPj4gZGlmZiAtLWdpdCBhL3BhY2thZ2Uva2VybmVs
L2xpbnV4L21vZHVsZXMvbmV0c3VwcG9ydC5tayBiL3BhY2thZ2Uva2VybmVsL2xpbnV4L21vZHVs
ZXMvbmV0c3VwcG9ydC5tawo+ID4+IGluZGV4IDIwNjE2ZDlhZjYuLjk3MzJlZTBkNzMgMTAwNjQ0
Cj4gPj4gLS0tIGEvcGFja2FnZS9rZXJuZWwvbGludXgvbW9kdWxlcy9uZXRzdXBwb3J0Lm1rCj4g
Pj4gKysrIGIvcGFja2FnZS9rZXJuZWwvbGludXgvbW9kdWxlcy9uZXRzdXBwb3J0Lm1rCj4gPj4g
QEAgLTM4NiwxMCArMzg2LDEwIEBAICQoZXZhbCAkKGNhbGwgS2VybmVsUGFja2FnZSxpcDYtdnRp
KSkKPiA+PiAgZGVmaW5lIEtlcm5lbFBhY2thZ2UveGZybS1pbnRlcmZhY2UKPiA+PiAgICBTVUJN
RU5VOj0kKE5FVFdPUktfU1VQUE9SVF9NRU5VKQo+ID4+ICAgIFRJVExFOj1JUHNlYyBYRlJNIElu
dGVyZmFjZQo+ID4+IC0gIERFUEVORFM6PStrbW9kLWlwc2VjNCAra21vZC1pcHNlYzYgQCFMSU5V
WF80XzE0Cj4gPj4gKyAgREVQRU5EUzo9K2ttb2QtaXBzZWM0ICtrbW9kLWlwc2VjNiBAIUxJTlVY
XzRfMTQgQCFMSU5VWF80XzkKPiA+IElzIHRoZXJlIGEgcmVhc29uIHdoeSB5b3Ugd2FudCB0byBl
eGNsdWRlIGtlcm5lbCB2ZXJzaW9uIDQuOSBhcyBpbgo+ID4gbWFzdGVyIGFsbCB0YXJnZXRzIHdp
bGwgYmUgc3dpdGNoZWQgdG8gNC4xOSBhbmQgYWZhaWsgbm8gdGFyZ2V0cyB3aWxsCj4gPiB1c2Ug
NC45Cj4KPgo+IEl0IHdhcyBIYXVrZSBNZWhydGVucyB3aXNoLCBzbyBJJ20gYSBiaXQgaW4gYmV0
d2Vlbi4KRmluZTsgSSB3aWxsIGNoZWNrIHdpdGggSGF1a2UKCkhhbnMKPgo+IEtpbmQgcmVnYXJk
cywKPgo+IEFuZHLDqQo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9w
ZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVu
d3J0LWRldmVsCg==

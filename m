Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E68C820DF
	for <lists+openwrt-devel@lfdr.de>; Mon,  5 Aug 2019 17:55:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qS2ac2Qb47ly27VHViqcGiMu0kpdR34ZzF9Hy0KCrmY=; b=Os1GqeUyrxAkrL
	TE0hprq3SS3LkXHtrcO8bFoaI0wu93brVgJ4RV8KRXLDhsv0Ha+QsKs4tZ57RCR75W4Ew++i6OzHx
	hXQcLyJfJqfor4JeOzOqd8EZ4zkVv55cNDCB+mhlt0g2oTirLF7hCcJB6Xh3wq1Bpt6y3MuihCOYn
	LimntiUC5/5g99zdQwvg5gHBwkc6eRVmI+1OY/Q+sp8Z5GcgAPRwQnaWN2I3W7A5lxgCvMNV127Lf
	RlzIaZHOXrSzUwtJN+usPg3HfUJ9c4eDM3eMzR1EuVK6i4/Din5Yq0DiJcLPNPzLa3zvFaORzayJh
	qbP1QaAI8n2ldryV4AQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hufKO-0003UK-1i; Mon, 05 Aug 2019 15:55:16 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hufJx-0003TY-Dd
 for openwrt-devel@lists.openwrt.org; Mon, 05 Aug 2019 15:54:51 +0000
Received: by mail-io1-xd43.google.com with SMTP id m24so168379377ioo.2
 for <openwrt-devel@lists.openwrt.org>; Mon, 05 Aug 2019 08:54:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=C5U02iD2Awuy04bEXPSHYAekegcRGAdCRzU0DYwP6cI=;
 b=bpvwk40bhXk7cChln0bAGlAi8+9/GlZk/gG8hGrFYYZrRuh1tB6JFwIw9cQIAHxp8m
 oFQKPHWJ+N75kpqXKrN1SgYmfizdASxiC9zbSyazmR+0X1qrhd7Dj4Vb0bC2EqC878dS
 6Icmn384uL1NRw93qrd2jhy5EiPGbylFpKANhZREf5KqDzggzCVK11IjqMKezssBu75N
 405xb8BGmami1vg+nWQb4LU0zr78CP0RkUEl1G1MQV0TTRoXLGzCYRh0HONPUjxODgup
 Y7nqDwf09/Mzt6xcfIP3DmdBpUVstn9hWwpf/gAEyASm13TTt5ojjnZImQb9lR+nIB5y
 RiEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=C5U02iD2Awuy04bEXPSHYAekegcRGAdCRzU0DYwP6cI=;
 b=eX1zeze2XDnRjJbFBfakJ59dpUReM4iMGZO3dTgUdZZIlvBhVRyIoB0cmHD1bCmw+2
 ed91sRes8rvazoNBWZ0OLPhYgtIg4fko2WdruFY7EBUEw6ga89WU0nFXGiP3e29aeSL8
 TcrJXWYvET86aJlZdAlXFzaRvw0y7BxZjh0Tv7D7dxKSJ90uEXIQnXVbuvU194mALrrC
 YVWpzp5lOYpakTez1yEndeZUKIFjzyG48ptcn8A0ztjE8THvrZ1R/NHarV/7+DJl3iOb
 vnAyFUquieVUpNRK8agpDfI4iEn/JUh4a1A/b4uUy4FtTtXYMsPpShFn6DQ36BZ8iqM0
 90sA==
X-Gm-Message-State: APjAAAUedUnWs5sLpHGRqkj4N37nT7msRHcr+p13NrPgVKFGOmDkjY69
 vNNCm3owe0BJ6VfTeYAhRYJA4TcKfDV/9u3gBQnRiqzF
X-Google-Smtp-Source: APXvYqzBHamL/ujQ9PJjRzh3hA3PLdsAJk1wi/mQs+LAAAB2LiM8jL5sigI4ZwOa3+knH06mxscN70Whv0C+MkQg6YQ=
X-Received: by 2002:a5d:8451:: with SMTP id w17mr67088943ior.226.1565020487839; 
 Mon, 05 Aug 2019 08:54:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190802144610.1229-1-freifunk@adrianschmutzler.de>
 <CANoib0Gt1WUtGGXaXp=iFu5ejPA1GkhevcquxFGVEHohJrwR4A@mail.gmail.com>
 <022601d54b95$30fec170$92fc4450$@adrianschmutzler.de>
In-Reply-To: <022601d54b95$30fec170$92fc4450$@adrianschmutzler.de>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Mon, 5 Aug 2019 18:54:36 +0300
Message-ID: <CANoib0EKqHH5Xx6Gx5uUozvt3zNvuU6UvqLiE8Eaqjn1DtDQHQ@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_085449_684305_55938BFE 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: convert devices to
 interrupt-driven gpio-keys
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

0L/QvSwgNSDQsNCy0LMuIDIwMTkg0LMuINCyIDE2OjUzLCBBZHJpYW4gU2NobXV0emxlciA8bWFp
bEBhZHJpYW5zY2htdXR6bGVyLmRlPjoKPgo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0K
PiA+IEZyb206IERtaXRyeSBUdW5pbiBbbWFpbHRvOmhhbmlwb3VzcGlsb3RAZ21haWwuY29tXQo+
ID4gU2VudDogRnJlaXRhZywgMi4gQXVndXN0IDIwMTkgMTg6NTEKPiA+IFRvOiBBZHJpYW4gU2No
bXV0emxlciA8ZnJlaWZ1bmtAYWRyaWFuc2NobXV0emxlci5kZT4KPiA+IENjOiBPcGVuV3J0IERl
dmVsb3BtZW50IExpc3QgPG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmc+Cj4gPiBTdWJq
ZWN0OiBSZTogW09wZW5XcnQtRGV2ZWxdIFtQQVRDSF0gYXRoNzk6IGNvbnZlcnQgZGV2aWNlcyB0
byBpbnRlcnJ1cHQtCj4gPiBkcml2ZW4gZ3Bpby1rZXlzCj4gPgo+ID4g0L/RgiwgMiDQsNCy0LMu
IDIwMTkg0LMuINCyIDE3OjQ2LCBBZHJpYW4gU2NobXV0emxlciA8ZnJlaWZ1bmtAYWRyaWFuc2No
bXV0emxlci5kZT46Cj4gPiA+Cj4gPiA+IFRoaXMgY29udmVydHMgYWxsIHJlbWFpbmluZyBkZXZp
Y2VzIHRvIHVzZSBpbnRlcnJ1cHQtZHJpdmVuCj4gPiA+IGdwaW8ta2V5cyBjb21wYXRpYmxlIGlu
c3RlYWQgb2YgZ3Bpby1rZXlzLXBvbGxlZC4KPiA+ID4gVGhlIHBvbGwtaW50ZXJ2YWwgaXMgcmVt
b3ZlZC4KPiA+ID4KPiA+Cj4gPiBXaGVuIEkgcG9ydGVkIERJUi04MjUtYjEgdG8gYXRoNzkgbGFz
dCB5ZWFyLCAiZ3Bpby1rZXlzIiB3aGVyZSB2ZXJ5Cj4gPiB1bnJlbGlhYmxlIGFuZCBJIGhhZCB0
byBzd2l0Y2ggdG8gImdwaW8ta2V5cy1wb2xsZWQiLgo+ID4gSSBkaWRuJ3QgdGVzdCBpdCBzaW5j
ZS4gSSdsbCBiZSBhYmxlIHRvIHRlc3Qgb25seSBuZXh0IHdlZWsuCj4KPiBJIG1vc3RseSBoYXZl
IFRQLUxpbmsgZGV2aWNlcywgYW5kIEkndmUgbmV2ZXIgZXhwZXJpZW5jZWQgYW55IGlzc3VlcyB3
aXRoIHRob3NlLgo+IExvb2tpbmcgZm9yd2FyZCB0byB5b3VyIHRlc3QhCgpUaGlzIGlzIG5vdCBh
Ym91dCB2ZW5kb3IsIGJ1dCBhYm91dCBTb0MuIGFyNzEwMCBtYXkgYmUgZGlmZmVyZW50IGZyb20K
b3RoZXIgZGV2aWNleCBvbiBhcjl4eHguCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVs
QGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0
aW5mby9vcGVud3J0LWRldmVsCg==

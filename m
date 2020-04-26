Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 436B91B90F6
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 Apr 2020 16:50:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MKRC7a3pZmTdEt4l4QJGqqHDsPuc8rD3R8ntEC9ncCE=; b=QFHabhb984pXb3
	x8RexRSUckxJVAGAmCPH1UKqed2HUvH52vt9Bq4ylX+xbcsFIj+Q2lrII6V4NGHTTnpMYQKI5LT+0
	BkN1lfbHRVmLHDkYeHG542Ms+jPIIVt5RqtvMWmMIuUM2DzEoC22DUtykS8X4qtoCKbQKncIxDMlk
	D3uu5yA0/5IypZQehHj1zWmGpiXHWrBOhClvMnA5plBJst4eKygxIFrmyjInIYdv/Wq0R04tcvQsM
	mgB+hV+3iFviuTkX8RqT8ZaEI7K6IvC4cwJpmbH3vINW7BKU/x6EWK7ytnenqi9EHzNIyFXVvR4lg
	eaFaPWeV1fO/+H9My5gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSibp-0008EV-OK; Sun, 26 Apr 2020 14:50:17 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSibZ-0007mi-He
 for openwrt-devel@lists.openwrt.org; Sun, 26 Apr 2020 14:50:03 +0000
Received: by mail-qk1-x743.google.com with SMTP id 20so15392129qkl.10
 for <openwrt-devel@lists.openwrt.org>; Sun, 26 Apr 2020 07:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=K7KDT4on5jP1xcJ/vlef910iL0BZWwOT/RZslAtZeyg=;
 b=uoXaz3wOC83pUJkSqa0cahlBRxVzmr2jjMSSreaNlCv71puljDl0J/PsVjOum66Uvq
 rCemJ+mnYQ7zO1e70Yi0CMm+mK9I10EJCKbgX3YywYNI32q/VrqZg5Xlc02riSZhSW5s
 tzcZXRPjWap9fqMLwqhipEmZrXRlLalVjhsQl//pp30GiBtBgv0TsfNg7oovSchUbVwB
 m0nuLqzO+dUrZslRXwNteM6SE5pBYRijS/aock6CJapR/A2JmrHOzZC79ZUxlH5kj4qd
 UmGwxTurD5CtKJqjePexg11xIAcRll46d2PgGXxb/7Yu26oMBb53zDjunPdBKHc43m3q
 AkLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=K7KDT4on5jP1xcJ/vlef910iL0BZWwOT/RZslAtZeyg=;
 b=oLLcNPW6PtniXptRTpyTfmIiY8dSpL/XFT3ZOQfBb1UxcDQBDARRyqGJ81GS1KOlVE
 KsfbcEoj9G57BqqKFJ8zz5jGOYDOGqkIvm9aota3SvGGbT5SfaimYMSI6Yj/XUMLyyGY
 1m0AYOmKUBcfF5Rzsc1FnFwdlILGJpaj+D0lmIMzWlP+NFBvlxvJ8vY7s+M6z9ln/U0e
 zLHYEclXRaPyqg+4zFPQermmXILWAwDZbQ3LZ6IAJvDDOsDIS75jQFo9qqGZIfBgaoHW
 C/2wHUhFyldbmxuOyNhDE+7i6dQRUS7BpmdVVbWJ/nHf+NwfxADCv5zcbT2GUmf25qKB
 zV8Q==
X-Gm-Message-State: AGi0PuaDNZ3ZWfQ31gpPH6+F3VBC3AXip2ivMVVx6NFQlXnympjTOC0C
 wfuRjvZEUf5nj+aCAIyFweIkMR1zSiJwlV9Rg5Q=
X-Google-Smtp-Source: APiQypKfCySP9BtefCDJ/dSehIGjJmqKncsl2oO4hYEqHcyC12w9FdW4WlUMk+nxas5IZ3oIW5et4HG7uNkt4dXxFbM=
X-Received: by 2002:a37:787:: with SMTP id 129mr17845281qkh.92.1587912599322; 
 Sun, 26 Apr 2020 07:49:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200419003715.26284-1-szab.hu@gmail.com>
 <20200419184911.5249-1-szab.hu@gmail.com>
 <20200419184911.5249-2-szab.hu@gmail.com>
 <2fe5c461-85b5-4cc0-60ed-a240a367497f@david-bauer.net>
 <CAOZt9c8ekg9byVTez4_s5sBEY+FrvmQGLi+q4JbdXKhc=6CJ_A@mail.gmail.com>
In-Reply-To: <CAOZt9c8ekg9byVTez4_s5sBEY+FrvmQGLi+q4JbdXKhc=6CJ_A@mail.gmail.com>
From: Szabolcs Hubai <szab.hu@gmail.com>
Date: Sun, 26 Apr 2020 16:49:48 +0200
Message-ID: <CAOZt9c-LcW5pfpJLTrG+jWsHpW2tmRX4LDAgnJ8DPa2=foYJfQ@mail.gmail.com>
To: David Bauer <mail@david-bauer.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_075001_616677_F6D20D4E 
X-CRM114-Status: GOOD (  18.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [szab.hu[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: mt7621: use lzma-loader for
 D-Link DIR-860L B1
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

SGkgYWdhaW4hCgpTemFib2xjcyBIdWJhaSA8c3phYi5odUBnbWFpbC5jb20+IGV6dCDDrXJ0YSAo
aWTFkXBvbnQ6IDIwMjAuIMOhcHIuIDI2LiwgViwgMTY6NDMpOgo+Cj4gSGkgRGF2aWQhCj4KPiBE
YXZpZCBCYXVlciA8bWFpbEBkYXZpZC1iYXVlci5uZXQ+IGV6dCDDrXJ0YSAoaWTFkXBvbnQ6IDIw
MjAuIMOhcHIuIDI2LiwgViwgMTQ6NDIpOgo+ID4KPiA+IEhpIFN6YWJvbGNzLAo+ID4KPiA+IE9u
IDQvMTkvMjAgODo0OSBQTSwgU3phYm9sY3MgSHViYWkgd3JvdGU6Cj4gPiA+IC0gIEtFUk5FTCA6
PSBrZXJuZWwtYmluIHwgYXBwZW5kLWR0YiB8IHJlbG9jYXRlLWtlcm5lbCB8IGx6bWEgfCB1SW1h
Z2UgbHptYQo+ID4gPiArICBMT0FERVJfVFlQRSA6PSBiaW4KPiA+ID4gKyAgS0VSTkVMIDo9IGtl
cm5lbC1iaW4gfCBhcHBlbmQtZHRiIHwgbHptYSB8IGxvYWRlci1rZXJuZWwgfCBcCj4gPiA+ICsg
IHJlbG9jYXRlLWtlcm5lbCB8IGx6bWEgLWEwIHwgdUltYWdlIGx6bWEKPiA+Cj4gPiBTb3JyeSBm
b3IgZ29pbmcgb3ZlciB0aGlzIG9uZSBtb3JlIHRpbWUuIElzIHRoZXJlIGEgc3BlY2lmaWMgcmVh
c29uCj4gPiB0byBwYWNrIHRoZSByZXN1bHRpbmcgdUltYWdlIHVzaW5nIGx6bWE/IEFsc28gdGhl
IGx6bWEtbG9hZGVyIHJlbG9jYXRlcwo+ID4gaXRzZWxmIGFmYWlrLCBzbyByZWxvY2F0ZS1rZXJu
ZWwgc2hvdWxkbid0IGJlIG5lY2Vzc2FyeSB3aGVuIHVzaW5nIG91cgo+ID4gb3duIGxvYWRlciAo
aSBtaWdodCBiZSB3cm9uZyBoZXJlKS4KPiA+Cj4gPiBDb3VsZCB5b3UgdHJ5IHRoZSBhdHRhY2hl
ZCBwYXRjaCBvbiB5b3VyIGRldmljZT8KPiA+Cj4KPiBObyBwcm9ibGVtIGF0IGFsbCwgYXMgaXQn
cyBzdGlsbCBub3QgbGFuZGVkLiA6KQo+IE1lYW53aGlsZSBJIHN0YXJ0ZWQgcGxheWluZyB3aXRo
IHRoYXQgbG9hZGVyLW9rbGkgd2hhdCBHdW8gd2FzIHJlZmVycmluZy4KPiBMb29rcyBsaWtlIGl0
IG5lZWRzIG1vcmUgbWFnaWMuIDpECj4KPgo+IEkgdHJpZWQgeW91ciBwcm9wb3NlZCBwYXRoIHdo
ZW4gdGhlIHJlY2lwZSBoaXQgbWFzdGVyLCB3aXRob3V0IGxhY2suIFswXQo+IFdpbGwgdHJ5IGFn
YWluIGZvciB5b3UuCj4KCkZvcmdvdCB0byBtZW50aW9uIHRoYXQgR3VvIGFsc28gbm90ZWQgaGlz
IG9yaWdpbmFsIHRocmVhZCBbMF0gdGhhdApESVItODYwTCBpcyBhbiBleGNlcHRpb24uCgoKWzBd
IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL3BpcGVybWFpbC9vcGVud3J0LWRldmVsLzIwMjAt
QXByaWwvMDIyODM0Lmh0bWwKCkJSLApTemFib2xjcwoKCj4gQWJvdXQgdGhlIGx6bWEgcmVwYWNr
OiBJIGZvdW5kIG91dCB0aGF0IHRoZSBVLUJvb3QgYWNjZXB0cwo+IHVuY29tcHJlc3NlZCBhbmQg
bHptYSBjb21wcmVzc2VkIGluaXRyYW1mcyBpbWFnZXMuCj4gSXQgZG9lc24ndCBhY2NlcHRzIGd6
aXAgaW5pdHJhbWZzLCBidXQgSSBkaWRuJ3QgdGVzdGVkIG90aGVyIGNvbXByZXNzaW9ucy4KPiBJ
IGFsc28gZm91bmQgdGhhdCB0aGUgVS1Cb290IGV4cGVjdHMgbHptYSBjb21wcmVzc2VkIGtlcm5l
bCBpbWFnZXMKPiBmcm9tIHRoZSBmbGFzaCBhbmQgZG9lc24ndCBjYXJlIGFib3V0IHVJbWFnZSBo
ZWFkZXIuCj4KPiBBYm91dCByZWxvY2F0ZS1rZXJuZWw6IHdpdGhvdXQgaXQgdGhlIHJvdXRlciBo
YW5ncyBhZnRlciAidHJhbnNmZXJyaW5nCj4gY29udHJvbCB0byBMaW51eCIsIGxpa2UgYmVsb3ch
Cj4KPgo+IFBsZWFzZSBjaG9vc2UgdGhlIG9wZXJhdGlvbjoKPiAgICAxOiBMb2FkIHN5c3RlbSBj
b2RlIHRvIFNEUkFNIHZpYSBURlRQLgo+ICAgIDI6IExvYWQgc3lzdGVtIGNvZGUgdGhlbiB3cml0
ZSB0byBGbGFzaCB2aWEgVEZUUC4KPiAgICAzOiBCb290IHN5c3RlbSBjb2RlIHZpYSBGbGFzaCAo
ZGVmYXVsdCkuCj4gICAgNDogRW50ciBib290IGNvbW1hbmQgbGluZSBpbnRlcmZhY2UuCj4gICAg
NzogTG9hZCBCb290IExvYWRlciBjb2RlIHRoZW4gd3JpdGUgdG8gRmxhc2ggdmlhIFNlcmlhbC4K
PiAgICA5OiBMb2FkIEJvb3QgTG9hZGVyIGNvZGUgdGhlbiB3cml0ZSB0byBGbGFzaCB2aWEgVEZU
UC4KPiAgMAo+Cj4gMzogU3lzdGVtIEJvb3Qgc3lzdGVtIGNvZGUgdmlhIEZsYXNoLgo+ICMjIEJv
b3RpbmcgaW1hZ2UgYXQgYmZjNTAwMDAgLi4uCj4gYWRkcjo4MDUwMDAwMAo+IFdlIGhhdmUgU0VB
TUEsIEltYWdlIFNpemUgPSA0NzU5Nzk0Cj4gVmVyaWZ5aW5nIENoZWNrc3VtIC4uLgo+IFVuY29t
cHJlc3NpbmcgU0VBTUEgbGludXgubHptYSAuLi4gT0sKPiAjIyBUcmFuc2ZlcnJpbmcgY29udHJv
bCB0byBMaW51eCAoYXQgYWRkcmVzcyAwMDAwMDAwMCkgLi4uCj4gIyMgR2l2aW5nIGxpbnV4IG1l
bXNpemUgaW4gTUIsIDEyOAo+Cj4gU3RhcnRpbmcga2VybmVsIC4uLgo+Cj4gKGhhbmcpCj4KPgo+
Cj4gWzBdIGh0dHBzOi8vZm9ydW0ub3BlbndydC5vcmcvdC9vcHRpbWl6ZWQtYnVpbGQtZm9yLXRo
ZS1kLWxpbmstZGlyLTg2MGwvOTQ4LzEwODk/dT14YWJvbGNzCj4KPgo+IFJlZ2FyZHMsCj4gU3ph
Ym9sY3MKPgo+ID4gQmVzdCB3aXNoZXMKPiA+IERhdmlkCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVu
d3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFp
bG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==

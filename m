Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3651AFD20
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Apr 2020 20:15:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kySl9I7SlR59sF81r3EeSto34tPwQ+rvaqfGyn9HtiI=; b=PD684L0DJ8VzgU
	YWslg34Y4vcpWkNn8rVZ17kyKnA2TrWX2RiryD4Y+JHWGYxMSBHYQtsWg7hS2R63mD5LQyeGts4ZC
	k/85nQ96kTNcZpa8Jgdc4ZCCPeRF554guggX2qsm9+2QURsBmzgFT8Fv3Oo3a5YV0DWP4DJ5EoMGa
	7HCxE8DP0ynD6mIQnEmfD2+UkT3K/coWRaU0KnlStC2YngkIGfh3OeleLISGpDoHhyvKDxsdgZvPb
	PnPE7Qm6Nt/WP9zbEY0ldVZDjjrlJ7rGN1vn9Bz8wxlhDR6oR7OzQQx36+G2L1diAgwHd/aXby9UP
	6n50/Kjau3M8zrwCK6dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQETP-0005Mx-Ry; Sun, 19 Apr 2020 18:15:19 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQESq-00059O-G6
 for openwrt-devel@lists.openwrt.org; Sun, 19 Apr 2020 18:14:45 +0000
Received: by mail-qv1-xf44.google.com with SMTP id fb4so3600223qvb.7
 for <openwrt-devel@lists.openwrt.org>; Sun, 19 Apr 2020 11:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=UACN9QAj1k8+9Oxxa8vRizxyfpliZwiCo9wlhKS2pWQ=;
 b=frEdG4lYlwIodYychs3U1flwijG0PjZjWg37OEjEf+tENa2I1TpgEq/9zEqhKJxA8u
 3r9qHbs8SDLgGBu13byNNV4asCLu6Qd5SXqmr5PZsKERJMEG1QFl4YwDL5ONdxE0O0Fx
 w3fw8DyGuguhKnALua70tayOaTx0b9bWovGws6cYTwIOckgfH7AdjeNRKPQ2PFjs/Wmc
 rwG0z0e/WKxFp+5CyppWQlpdhdjlhW8Plt8TuzEQq+Mhu88VqLQ3MM1/d3dKqBpuAGjQ
 A3iBfPbbG0T6Z4vhwPCh2KFaxK5fTQ/3aAOzWKBtfT7T/HQSRXXDkCsWDtt+WLwUxAgA
 EEpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=UACN9QAj1k8+9Oxxa8vRizxyfpliZwiCo9wlhKS2pWQ=;
 b=AYSaB3e/OAsZjN1aj92AD/YmsuKnL0OmxVQlDdHiC2cxuJFrrXNvDy97wnpnQxzqSB
 dRdmZYBMkepXfEzxs7aiJptKrA9fYErTj1xNiTwRSw1sMPm8TgPCIy6DdINP8Pb92sUS
 i0qBVaYe1n12arNXLEw6EaAMtzCmx/5Gc5itVjWoe51TbgHrSEcoLRhXBOi7g9HNvF2z
 3avWtNmtnFi5Et132UjX8h7xMd5RzPY7lymGmQfzbQ6K3n30GIPfTlOQfE3pvL+QPgsh
 LQifzaCM6xB5rxRwU5rPJbEUVW2bgjHkMdzT/TlhTavPRsHBXUNiXxIjPIfwj99AFa9o
 6m4Q==
X-Gm-Message-State: AGi0PuYm5NQnxLUDI7rJkhZ/4wg7hjN2TMwXn6vzRpEyDgNy01D/AUo6
 Hc1U87i8d7iR0/X9b2VArqLlGxqZY6xlAo6/uadOXsOW
X-Google-Smtp-Source: APiQypLa/Rv7DcL6u6ZQ2NPD4GCzHzspGY7YazQEJcqxfiWn8UCALulkWr9fpHpbRr0L2Jx8IYHnUgJeLw6bvnKBCzI=
X-Received: by 2002:a0c:f50a:: with SMTP id j10mr11210003qvm.172.1587320083411; 
 Sun, 19 Apr 2020 11:14:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200416153146.4377-1-szab.hu@gmail.com>
 <20200419003715.26284-1-szab.hu@gmail.com>
 <20200419003715.26284-3-szab.hu@gmail.com>
 <CAJsYDVLn4mxcSnm9uURVeXtom64mOunOKCfYVew0ynDuDahB7w@mail.gmail.com>
In-Reply-To: <CAJsYDVLn4mxcSnm9uURVeXtom64mOunOKCfYVew0ynDuDahB7w@mail.gmail.com>
From: Szabolcs Hubai <szab.hu@gmail.com>
Date: Sun, 19 Apr 2020 20:14:32 +0200
Message-ID: <CAOZt9c_r4WZOSbiJstXYo2C0FYAvM_j_xHr4vp9dv58xs3q9ug@mail.gmail.com>
To: Chuanhong Guo <gch981213@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_111444_552355_E6CA2D81 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [szab.hu[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f44 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] ramips: mt7621: use lzma-loader for
 D-Link DIR-860L
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
 mail@adrianschmutzler.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGVsbG8hCgpDaHVhbmhvbmcgR3VvIDxnY2g5ODEyMTNAZ21haWwuY29tPiBlenQgw61ydGEgKGlk
xZFwb250OiAyMDIwLiDDoXByLiAxOS4sClYsIDE3OjQyKToKPgo+IEhpIQo+Cj4gT24gU3VuLCBB
cHIgMTksIDIwMjAgYXQgODozOCBBTSBTemFib2xjcyBIdWJhaSA8c3phYi5odUBnbWFpbC5jb20+
IHdyb3RlOgo+ID4KPiA+IFRoaXMgZGV2aWNlIGhhcyB0cm91YmxlIGV4dHJhY3RpbmcgYmlnIGtl
cm5lbCBmcm9tIGZsYXNoLAo+ID4gYW5kIHN1cHBvcnRzIExaTUEgY29tcHJlc3NlZCBrZXJuZWxz
IG9ubHkuCj4gPgo+ID4gVXNpbmcgT3BlbldydCBrZXJuZWwgbG9hZGVyIHNhdmVzIHVzIDY0IEtC
IGNvbXBhcmVkIHRvIHRoZSBkaWN0aW9uYXJ5Cj4gPiBzaXplIGxpbWl0aW5nIHdvcmthcm91bmQu
Cj4gPgo+ID4gRmFjdG9yeSBpbWFnZSBzaXplcyAoY29tbWl0OiA1ZjEyNmM1NDFhNzQpIHdpdGgg
IkNPTkZJR19BTExfS01PRFM9eSI6Cj4gPiAtIG9yaWdpbmFsICgiLWQyMyIsIGRlZmF1bHQpOiA0
Nzg0MTg4IGJ5dGVzLCBMWk1BIEVSUk9SIDEKPiA+IC0gd2l0aCAiLWQxOSI6IDQ5MTUyNjAsIExa
TUEgRVJST1IgMQo+ID4gLSB3aXRoICItZDE4IjogNDkxNTI2MCwgZGlmZiB0byBvcmlnaW5hbDog
KzEyOCBLQgo+ID4gLSB3aXRoICItZDE3IjogNDk4MDc5NiwgZGlmZiB0byBvcmlnaW5hbDogKzE5
MiBLQgo+ID4gLSB3aXRoIHRoaXMgcGF0Y2g6IDQ4NDk3MjQsIGRpZmYgdG8gb3JpZ2luYWw6ICs2
NCBLQgo+ID4KPiA+IFRvIHNhdmUgc29tZSBDUFUgY3ljbGUsIHVzZSBtaW5pbWFsIGNvbXByZXNz
aW9uICgiLWEwIikgZm9yIHRoZSBMWk1BCj4gPiBjb21wcmVzc2VkIHVJbWFnZS4KPgo+IE15IG9y
aWdpbmFsIHRob3VnaHQgb24gdGhpcyBkZXZpY2UgaXMgdG8gdXNlIGEgZGlmZmVyZW50IGxvYWRl
ci4gVGhlIGZpcnN0Cj4gNE1CIG9mIFNQSS1OT1IgZmxhc2ggb24gbXQ3NjIxIGlzIG1hcHBlZCB0
byAweDFmYzAwMDAwIGFuZCBsem1hCj4gbG9hZGVyIGNhbiByZWFkIGNvbXByZXNzZWQga2VybmVs
IGRpcmVjdGx5IGZyb20gZmxhc2guIElmIHRoZSBrZXJuZWwKPiBjYW4gYmUgcHV0IGF0IGEgZml4
ZWQgb2Zmc2V0IGluIGZsYXNoLCB3ZSBjb3VsZCBjb21wcmVzcyBsem1hIGxvYWRlcgo+IHNlcGFy
YXRlbHkgYW5kIGxldCB1LWJvb3QgZGVjb21wcmVzcyBvbmx5IHRoZSBsb2FkZXIuCj4gWW91IGNv
dWxkIHRha2UgYSBsb29rIGF0IHRoZSB0cC1saW5rLW5vbHptYSByZWNpcGUgaW46Cj4gdGFyZ2V0
L2xpbnV4L2F0aDc5L2ltYWdlL2NvbW1vbi10cC1saW5rLm1rCj4gYW5kIHNlZSBpZiB5b3UgY291
bGQgaW1wbGVtZW50IGEgc2ltaWxhciBzb2x1dGlvbiBmb3IgbXQ3NjIxLgo+IE5vdGU6IFlvdSBu
ZWVkIHRvIGZpeCBBUjcxWFhfRkxBU0hfU1RBUlQgZGVmaW5lZCBpbjoKPiB0YXJnZXQvbGludXgv
cmFtaXBzL2ltYWdlL2x6bWEtbG9hZGVyL3NyYy9sb2FkZXIuYwo+IHRvIDB4MWZjMDAwMDAgZm9y
IHRoaXMgbWV0aG9kIHRvIHdvcmsuCj4KClllcywgdGhhdCBuZXcgbG9hZGVyIHdvdWxkIGJlIGJl
c3Qgc29sdXRpb24uCkknbSBhIERldk9wcyBndXkgYW5kIG15IEMtZnUgaXMganVzdCBHb29nbGlu
ZyBhbmQgY29weS1wYXN0aW5nLiA6RAoKSSdtIGludGVyZXN0ZWQgaW4gdGhlIGltcGxlbWVudGF0
aW9uLCBzbyBJIHdvdWxkIHBsYXkgd2l0aCB0aGUgc291cmNlIGNvZGUKYXMgYSBob21ld29yaywg
YnV0IHRob3NlIHBhdGNoZXMgd291bGRuJ3QgYmUgcmVhZHkgZm9yIHRoZSAyMC54eCByZWxlYXNl
LiA7KQoKPiBJZiB5b3UgY2FuJ3QgaW1wbGVtZW50IGl0LCBJJ20gZmluZSB3aXRoIHlvdXIgY3Vy
cmVudCBzb2x1dGlvbiB0b28uCj4gYnV0IEkgcHJlZmVyIHRvIGRyb3AgcGF0Y2ggMS8yIGFuZCB3
cml0ZSB0aGUgY29tcGxldGUga2VybmVsCj4gcmVjaXBlIGZvciBkaXItODYwbCBvbmx5LiBJdCdz
IGEgYml0IGNvbmZ1c2luZyB0byB1c2UgIktFUk5FTCArPSIKPgoKSSdtIGdvaW5nIHRvIGdvIHRo
aXMgd2F5LiBUaGFuayB5b3UgYm90aCBmb3IgdGhlIGNvbW1lbnRzLgoKCi0tCkJSLApTemFib2xj
cwoKCgo+IC0tCj4gUmVnYXJkcywKPiBDaHVhbmhvbmcgR3VvCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==

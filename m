Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5563DF803A
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 Nov 2019 20:34:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=weNi8ZIOcT6st4dBUTpE8BgbhCxZwOTL7L5x7ax3B9I=; b=XH8nzjeGCXmVPE
	l5kuT/fHljpFpte1gXJPUrQ2KSGNhLCHkfCSk7a+7kCjj2EyCJtW8RLA/0BTr23L7+Cr+CzaAsEUk
	NGOUwpeYGNSzZt1x19qntVVdsUKL2EWhjmlYyzy4pr9V4oB0B0SJsZVfg4ZLjeozx/ku43d1GpTSm
	uAQRjAp0bM1MH3r1wMpWbLO5TWs6i+7fuwaDasiqxctHOuLTAh8X3Go1Stcuu2EzvF0+Y5KtciIDj
	XU00RZnlN806sKDvQ/FFr+UyQ9r/pTdnc1RHQZm4e9c1lZxWAjxWuWXuxiMzY0d6VN7Ednd46wE/i
	E6yEGSK1itN6pZCwMhQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUFS7-00026P-8c; Mon, 11 Nov 2019 19:34:19 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUFRq-0001zq-Eo
 for openwrt-devel@lists.openwrt.org; Mon, 11 Nov 2019 19:34:04 +0000
Received: by mail-lj1-x244.google.com with SMTP id e9so15042330ljp.13
 for <openwrt-devel@lists.openwrt.org>; Mon, 11 Nov 2019 11:34:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=HyGR132zRQj0uwViDkQnYDngKwJktSDF5dcSh4hsA6Y=;
 b=QUZoZK6Ogs99+nya8btDgofHIh9WVsxEPxp3+N+rze6voDeGTglupWbYqVzhCVtUwv
 zr5apniMc2Mcqdp9g66iyf+RvQ58iLg0DbE02aDF7TpIkWKqdsCvkb5UkOij7uTVZPC5
 5SN8MBXKLrLpK12r49Aq2Mlg/iOc6Y95tFEx6HPqEljax4ptLSaZePMnlERASGrA1JJo
 TllRJdXWUpLvD0dtRK6BZp+B1paKkMv/pOp06KTqeO6QLYgUN90R1i4Kn72t7Z9WI8/G
 MBq8X1Mt35VlktdltdcL/Xzjz2uRMGonvwoDjiKFkwSdARYOVj5pIfnkD2ntBeqyonn5
 HYSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=HyGR132zRQj0uwViDkQnYDngKwJktSDF5dcSh4hsA6Y=;
 b=J/2h7uh+ErqXGjjisKLPt/ta4R6gqYFRtMN3wT6gP7XN/6x+x85/QnhJ5JQKjIDe/2
 URCSqtrcyCXmm+Y7/n7PmcLpbdz/8+eH95yHL7txIZTziSSC8QnUQ0XTIF7qWq9hJ6Dt
 zknHD1FIAVwfWwdCsHvveLCOtpBk1eB9RfioPgz3SBBKOOe3nsimkH0noX7pK82KOhP4
 Mwf5tOKvVlu7gy8PW5jejFZNgJNOWSzV2Rny35Mr0UoDrJ3xFOy0oyB8mVyEpt8NcC7V
 qD7mnH0v0XOCrqf54PkmkdB3HeetKVToMlA+8LEpkR0COdLlXtqzBIW6EObZKmupEABL
 SUFw==
X-Gm-Message-State: APjAAAX8HdU54sDI1qtsHxA3hig28YTfk9+uzkVXhasK9WPNtkP6pU55
 198Li+axwy6HvWWhJC3BWkqTEIQ6tPQ=
X-Google-Smtp-Source: APXvYqz8iXBA4phZ1zlpHMzW+qfizFf7cSZCk8AM15TR+XYRSSggREADoqW/zdus//I+KaCHMu3SNw==
X-Received: by 2002:a2e:9bc9:: with SMTP id w9mr9668154ljj.35.1573500839967;
 Mon, 11 Nov 2019 11:33:59 -0800 (PST)
Received: from terminarch.lan (dotandthing.static.corbina.ru. [95.31.10.209])
 by smtp.gmail.com with ESMTPSA id
 y26sm8799770ljj.90.2019.11.11.11.33.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 11 Nov 2019 11:33:59 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Ivan Baktsheev <dot.and.thing@gmail.com>
In-Reply-To: <2b531a3c-60a9-78ce-508b-1069adbe1fcd@gmail.com>
Date: Mon, 11 Nov 2019 22:33:40 +0300
Message-Id: <64E0FF73-6AB2-497C-BB00-3E8DED2BFEE3@gmail.com>
References: <9146E54F-C4CD-4E4E-AFA0-180B36AFDE59@gmail.com>
 <2b531a3c-60a9-78ce-508b-1069adbe1fcd@gmail.com>
To: Piotr Dymacz <pepe2k@gmail.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_113402_518391_3FDAD312 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dot.and.thing[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] wlan factory defaults
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

UGlvdHIsCgo+IE9uIDExIE5vdiAyMDE5LCBhdCAyMTozNSwgUGlvdHIgRHltYWN6IDxwZXBlMmtA
Z21haWwuY29tPiB3cm90ZToKPiAKPiBIaSBJdmFuLAo+IAo+IE9uIDExLjExLjIwMTkgMTk6MDks
IEl2YW4gQmFrdHNoZWV2IHdyb3RlOgo+PiBIaSwKPj4gSSB3YW50IHRvIGFkZCBuZXcgZGV2aWNl
LCBidXQgYXMgb2Ygbm93IEkgY2FuIHVwbG9hZCBmaXJtd2FyZSB3aXJlbGVzc2x5IGFuZCB0aGVu
IEkgbmVlZCB0byBjb25uZWN0IHVzaW5nIHdpcmVkIGNvbm5lY3Rpb24sIGJlY2F1c2UgaW4gc3Rv
Y2sgT3BlbldydCBpbWFnZSB3aXJlbGVzcyBpcyBkaXNhYmxlZC4KPj4gRm9yIG15IHJvdXRlciAo
YW5kIHByb2JhYmx5IG1hbnkgb3RoZXJzKSBkZWZhdWx0IFdpRmkgU1NJRCBzdG9yZWQgaW4gZmFj
dG9yeSBwYXJ0aXRpb24gYW5kIGl04oCZcyBxdWl0ZSBlYXN5IHRvIGV4dHJhY3QuIFVuZm9ydHVu
YXRlbHksIHdpcmVsZXNzIHNldHVwIHRha2VzIHBsYWNlIGluIGRpZmZlcmVudCB0aW1lIHRoYW4g
d2lyZWQvZ3Bpby9sZWRzIHNldHVwIGZyb20gL2V0Yy9ib2FyZC5kIGFuZCBkZWZhdWx0cyBhcmUg
aGFyZGNvZGVkIGluIC9saWIvd2lmaS9tYWM4MDIxMS5zaAo+PiBDdXJyZW50bHksIEkgaGF2ZSAv
ZXRjL2JvYXJkLmQvMDRfZmFjdG9yeV9kZWZhdWx0cywgd2hpY2ggZXh0cmFjdHMgZmFjdG9yeSBk
ZWZhdWx0cyBmb3Igcm9vdCBwYXNzd29yZCBhbmQgV2lGaS4gV2lGaSBzZXR0aW5ncyB3cml0dGVu
IGludG8gL2V0Yy9mYWN0b3J5XzgwMjExLCB3aGljaCB0aGVuIHJlYWQgYXQgL2xpYi93aWZpL21h
YzgwMjExLnNoCj4+IEkgd291bGQgbGlrZSB0byBpbnRlZ3JhdGUgdGhpcyBpbnRvIE9wZW5XcnQs
IHBsZWFzZSB0YWtlIGEgbG9vayBhdCBmdWxsIGV4YW1wbGUgYXQgaHR0cHM6Ly9naXN0LmdpdGh1
Yi5jb20vYXBsYS9hODFjYWQwYTFkYzlmZWRmZWZmMTk5NDExMTZkYTM2OSBhbmQgc2hhcmUgeW91
ciB0aG91Z2h0cy4gRGlmZiBmb3IgL2xpYi93aWZpL21hYzgwMjExLnNoOgo+IAo+IElNSE8sIHRo
YXQgd291bGQgYmUganVzdCB0b28gbXVjaCBibG9hdC4gT3BlbldydCBpcyBhIGdlbmVyaWMgcGxh
dGZvcm0gKG9yIGEgZGlzdHJpYnV0aW9uKSwgdGh1cyBfcGVyc29uYWxseV8gSSBkb24ndCB0aGlu
ayB3ZSBzaG91bGQgc3VwcG9ydCBhbGwgdGhlIGRpZmZlcmVudCB3YXlzIHZlbmRvcnMgdXNlIHRv
IGtlZXAgdGhlaXIgc29mdHdhcmUgc2V0dGluZ3MuIE90aGVyd2lzZSwgd2UgZW5kIHVwIHdpdGgg
YnVuY2ggb2Ygc2NyaXB0cyBmZXRjaGluZyBkYXRhIGZvciB2YXJpb3VzIGRldmljZXMgYW5kIHRo
YXQgd291bGRuJ3QgZ2V0IGV2ZXIgdW5pZmllZCBhbmQgcHJvYmFibHkgYXQgc29tZSBwb2ludCwg
dW5tYWludGFpbmFibGUuIFdoYXQncyBtb3JlLCB3ZSBjYW4ndCB0cnVzdCB2YWx1ZXMgc3RvcmVk
IGluIHZlbmRvciBzZXR0aW5ncyAtIGluIHdvcnNlIGNhc2UsIHdpdGhvdXQgc29waGlzdGljYXRl
ZCBkYXRhIHZlcmlmaWNhdGlvbiwgd2UgbWlnaHQgZW5kIHVwIHdpdGggYnJva2VuIHVjaSBjb25m
aWd1cmF0aW9uLgoKSSB0aGluayB0aGUgc2FtZS4gVmVuZG9ycyBkb27igJl0IGNhcmUgYWJvdXQg
Y29tbW9uIGxvY2F0aW9uIHRvIHN0b3JlIGRlZmF1bHRzLCB0aGlzIGNhbiBiZSBjaGFuZ2VkIGlu
IHZlcnkgdW51c3VhbCB3YXlzLiBNeSBwYXRjaCBmb3IgbWFjODAyMTEuc2gganVzdCBhZGQgcG9z
c2liaWxpdHkgdG8gb3ZlcnJpZGUgZGVmYXVsdCB2YWx1ZXMgZm9yIHdsYW4uIElmIHNwZWNpZmlj
IE9wZW5XcnQgYnVpbGQgY29udGFpbnMgL2V0Yy9mYWN0b3J5XzgwMjExLCB0aGVuIGl0IHdpbGwg
YmUgcHJvY2Vzc2VkIGFuZCB1c2VkLCBvdGhlcndpc2UgcmFkaW8gd2lsbCBiZSBvZmYsIHNzaWQg
PSBPcGVuV3J0LCBubyBlbmNyeXB0aW9uLCBqdXN0IGxpa2UgYXMgb2YgdG9kYXkuCgpIb3cgdG8g
cHV0IHRoaXMgY29uZmlndXJhdGlvbiBpbnRvIGRldmljZT8gVGhpcyBpcyBub3QgYSBxdWVzdGlv
biBmb3IgT3BlbldydCBkZXZlbG9wZXJzLCBidXQgZm9yIHBlb3BsZSwgd2hvIGJ1aWxkIGN1c3Rv
bWl6ZWQgT3BlbldydCBmaXJtd2FyZS4gSXTigJlzIGRlZmluaXRlbHkgYmV0dGVyIHRvIGN1c3Rv
bWlzZSBidWlsZCB1c2luZyBzY3JpcHRzL2NvbmZpZ3VyYXRpb25zIGluIC9ldGMsIHRoYW4gY2hh
bmdpbmcgL2xpYi93aWZpL21hYzgwMjExLnNoLCBhcyBJIHNhdyBpbiBzb21lIGJ1aWxkcy4KCj4g
LS0gCj4gQ2hlZXJzLAo+IFBpb3RyCj4gCj4+IGRpZmYgLS1naXQgYS9wYWNrYWdlL2tlcm5lbC9t
YWM4MDIxMS9maWxlcy9saWIvd2lmaS9tYWM4MDIxMS5zaCBiL3BhY2thZ2Uva2VybmVsL21hYzgw
MjExL2ZpbGVzL2xpYi93aWZpL21hYzgwMjExLnNoCj4+IGluZGV4IGJlOWM1MzcuLjNjODhjODEg
MTAwNjQ0Cj4+IC0tLSBhL3BhY2thZ2Uva2VybmVsL21hYzgwMjExL2ZpbGVzL2xpYi93aWZpL21h
YzgwMjExLnNoCj4+ICsrKyBiL3BhY2thZ2Uva2VybmVsL21hYzgwMjExL2ZpbGVzL2xpYi93aWZp
L21hYzgwMjExLnNoCj4+IEBAIC0xLDEwICsxLDEyIEBACj4+ICAjIS9iaW4vc2gKPj4gIC4gL2xp
Yi9uZXRpZmQvbWFjODAyMTEuc2gKPj4gICAgYXBwZW5kIERSSVZFUlMgIm1hYzgwMjExIgo+PiAg
Ky4gL2V0Yy9mYWN0b3J5XzgwMjExCj4+ICsKPj4gIGxvb2t1cF9waHkoKSB7Cj4+ICAJWyAtbiAi
JHBoeSIgXSAmJiB7Cj4+ICAJCVsgLWQgL3N5cy9jbGFzcy9pZWVlODAyMTEvJHBoeSBdICYmIHJl
dHVybgo+PiAgCX0KPj4gIEBAIC05NSwyNSArOTcsNDkgQEAgZGV0ZWN0X21hYzgwMjExKCkgewo+
PiAgCQkJZGV2X2lkPSJzZXQgd2lyZWxlc3MucmFkaW8ke2RldmlkeH0ucGF0aD0nJHBhdGgnIgo+
PiAgCQllbHNlCj4+ICAJCQlkZXZfaWQ9InNldCB3aXJlbGVzcy5yYWRpbyR7ZGV2aWR4fS5tYWNh
ZGRyPSQoY2F0IC9zeXMvY2xhc3MvaWVlZTgwMjExLyR7ZGV2fS9tYWNhZGRyZXNzKSIKPj4gIAkJ
ZmkKPj4gICsJCWV2YWwgcmFkaW9faV9kaXNhYmxlZD1cJHJhZGlvJHtkZXZpZHh9X2Rpc2FibGVk
Cj4+ICsJCXJhZGlvX2lfZGlzYWJsZWQ9JHtyYWRpb19pX2Rpc2FibGVkOi0ke3JhZGlvX2Rpc2Fi
bGVkOi0xfX0KPj4gKwkJZXZhbCByYWRpb19pX2NvdW50cnk9XCRyYWRpbyR7ZGV2aWR4fV9jb3Vu
dHJ5Cj4+ICsJCXJhZGlvX2lfY291bnRyeT0ke3JhZGlvX2lfY291bnRyeTotJHJhZGlvX2NvdW50
cnl9Cj4+ICsJCWlmIFsgISAteiAiJHJhZGlvX2lfY291bnRyeSIgXSA7IHRoZW4KPj4gKwkJCXVj
aV9yYWRpb19jb3VudHJ5PSJzZXQgd2lyZWxlc3MucmFkaW8ke2RldmlkeH0uY291bnRyeT0ke3Jh
ZGlvX2lfY291bnRyeX0iCj4+ICsJCWVsc2UKPj4gKwkJCXVjaV9yYWRpb19jb3VudHJ5PQo+PiAr
CQlmaQo+PiArCj4+ICsJCWV2YWwgd2xhbl9pX3NzaWQ9XCR3bGFuJHtkZXZpZHh9X3NzaWQKPj4g
KwkJd2xhbl9pX3NzaWQ9JHt3bGFuX2lfc3NpZDotJHt3bGFuX3NzaWQ6LU9wZW5XcnR9fQo+PiAr
CQlldmFsIHdsYW5faV9lbmNyeXB0aW9uPVwkd2xhbiR7ZGV2aWR4fV9lbmNyeXB0aW9uCj4+ICsJ
CXdsYW5faV9lbmNyeXB0aW9uPSR7d2xhbl9pX2VuY3J5cHRpb246LSR7d2xhbl9lbmNyeXB0aW9u
Oi1ub25lfX0KPj4gKwkJZXZhbCB3bGFuX2lfa2V5PVwkd2xhbiR7ZGV2aWR4fV9rZXkKPj4gKwkJ
d2xhbl9pX2tleT0ke3dsYW5faV9rZXk6LSR3bGFuX2tleX0KPj4gKwkJaWYgWyAhIC16ICIkd2xh
bl9pX2tleSIgXSA7IHRoZW4KPj4gKwkJCXVjaV93bGFuX2tleT0ic2V0IHdpcmVsZXNzLmRlZmF1
bHRfcmFkaW8ke2RldmlkeH0ua2V5PSR7d2xhbl9pX2tleX0iCj4+ICsJCWVsc2UKPj4gKwkJCXVj
aV93bGFuX2tleT0KPj4gKwkJZmkKPj4gKwo+PiAgCQl1Y2kgLXEgYmF0Y2ggPDwtRU9GCj4+ICAJ
CQlzZXQgd2lyZWxlc3MucmFkaW8ke2RldmlkeH09d2lmaS1kZXZpY2UKPj4gIAkJCXNldCB3aXJl
bGVzcy5yYWRpbyR7ZGV2aWR4fS50eXBlPW1hYzgwMjExCj4+ICAJCQlzZXQgd2lyZWxlc3MucmFk
aW8ke2RldmlkeH0uY2hhbm5lbD0ke2NoYW5uZWx9Cj4+ICAJCQlzZXQgd2lyZWxlc3MucmFkaW8k
e2RldmlkeH0uaHdtb2RlPTExJHttb2RlX2JhbmR9Cj4+ICAJCQkke2Rldl9pZH0KPj4gIAkJCSR7
aHRfY2FwYWJ9Cj4+IC0JCQlzZXQgd2lyZWxlc3MucmFkaW8ke2RldmlkeH0uZGlzYWJsZWQ9MQo+
PiArCQkJc2V0IHdpcmVsZXNzLnJhZGlvJHtkZXZpZHh9LmRpc2FibGVkPSR7cmFkaW9faV9kaXNh
YmxlZH0KPj4gKwkJCSR7dWNpX3JhZGlvX2NvdW50cnl9Cj4+ICAgIAkJCXNldCB3aXJlbGVzcy5k
ZWZhdWx0X3JhZGlvJHtkZXZpZHh9PXdpZmktaWZhY2UKPj4gIAkJCXNldCB3aXJlbGVzcy5kZWZh
dWx0X3JhZGlvJHtkZXZpZHh9LmRldmljZT1yYWRpbyR7ZGV2aWR4fQo+PiAgCQkJc2V0IHdpcmVs
ZXNzLmRlZmF1bHRfcmFkaW8ke2RldmlkeH0ubmV0d29yaz1sYW4KPj4gIAkJCXNldCB3aXJlbGVz
cy5kZWZhdWx0X3JhZGlvJHtkZXZpZHh9Lm1vZGU9YXAKPj4gLQkJCXNldCB3aXJlbGVzcy5kZWZh
dWx0X3JhZGlvJHtkZXZpZHh9LnNzaWQ9T3BlbldydAo+PiAtCQkJc2V0IHdpcmVsZXNzLmRlZmF1
bHRfcmFkaW8ke2RldmlkeH0uZW5jcnlwdGlvbj1ub25lCj4+ICsJCQlzZXQgd2lyZWxlc3MuZGVm
YXVsdF9yYWRpbyR7ZGV2aWR4fS5zc2lkPSR7d2xhbl9pX3NzaWR9Cj4+ICsJCQlzZXQgd2lyZWxl
c3MuZGVmYXVsdF9yYWRpbyR7ZGV2aWR4fS5lbmNyeXB0aW9uPSR7d2xhbl9pX2VuY3J5cHRpb259
Cj4+ICsJCQkke3VjaV93bGFuX2tleX0KPj4gIEVPRgo+PiAgCQl1Y2kgLXEgY29tbWl0IHdpcmVs
ZXNzCj4+ICAgIAkJZGV2aWR4PSQoKCRkZXZpZHggKyAxKSkKPj4gIAlkb25lCj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IG9wZW53cnQtZGV2ZWwg
bWFpbGluZyBsaXN0Cj4+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPj4gaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVs
IG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlz
dHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4AD1AD0D8
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Apr 2020 22:08:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ckdBs/1IfQ8bfmZBTnABQ4R+S0Qn3WjVzd3wLCrUdgQ=; b=m+SA6+qsGoHAo3xDEpYGXgCKs6
	RR57M/85moXp/Ivq+GS+wg01M2U4lNYIQTcrIA2ZCeBh7z/VheK4KESpip3Pi5q3V6fo/PPa0NjrK
	okyGyucQNMG7NKBbdD5e6TY6pbtY6GagKH0TsujyWVMEQkobmRO+G5rPtN5Z029983yzXv0Vih10G
	GNwpnqSartsu8gp4vi+iZlWcekwoPBQLoLSH2qPOIIiKHjZbO7SWu9HpqeYu1rPEqEZvn0Ifilair
	HxfRv/vsgejOkH5lhB4hMy2OoHC7/J/E6cvTNhQU2+X86cYqVNREuMkWFBr0FEVRny381sH9PxUej
	HgGo835w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPAo6-0007mR-2A; Thu, 16 Apr 2020 20:08:18 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPAnz-0007ls-VN
 for openwrt-devel@lists.openwrt.org; Thu, 16 Apr 2020 20:08:13 +0000
Received: by mail-qv1-xf41.google.com with SMTP id c12so2723889qvj.5
 for <openwrt-devel@lists.openwrt.org>; Thu, 16 Apr 2020 13:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=3Fjt/OzU3eCjsJR/fxt0zNYrCx/Dywnc/d/kVAaxHOI=;
 b=F5g98tqzbZjgCrANP+j+PLJU8W06M5gGbsvXKXruPLbD5YUl9AJdoanxmni9uChgRT
 JdVDqNbMTWJo6BRznLMdYIqchEv29GBhT47PbsZdB7rq/kyJacrMrsCsUxYg44a98+uU
 RieUnVAkjRGfL8HUcJm9NyrFTOhZOA3eCHe6YFdq4aOKN6M+TXadO1qx09pEc9v150nB
 T7P0R2/149MIBqv2wEXrS/4Ougc6ytE3qJgDVGEgxGykYxjmbpuR+YM6CKM5Nf9P4i8L
 TXojC+M62qs+yAS5h5m+DAaCpD4U1i4cAqF6ai1RF//HqosQ+1vf2GAElyNrOBmM7SHJ
 VNig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=3Fjt/OzU3eCjsJR/fxt0zNYrCx/Dywnc/d/kVAaxHOI=;
 b=Uh/3X39Ho/675TbaoOCjy57S9X01IIUf83AfRrhrRIxbg49XomIm66eoc1jkAiXnIJ
 b+6ZP0vzzHXqLnpOrVxjWod7MvS2Lyge6ZfHrut+4zuYLNkem4F5V1seAd9fY64YOglc
 PDcObbtzUQ6Urv46Cqv2AkYWbO0sOwCQy3Oa7tyAZ15kh9xM9T17z2nfxM2YDPxoiRcr
 INbObqOVTbcKF82tFjDnzamdVCzVrk0M5mRxs+Be7gzLmWF4JDND1M6bOn9FAGH6II/6
 DGW/pDZ7H/7IAXNN8LSLB04GCNC11jQP3zXwrL8a/zsGxeUahSBXXgSMksq3dFKyTMeD
 Fw6A==
X-Gm-Message-State: AGi0PuavEa61JUSQQHTOJZZPhlcoyHi+CuIIDuEmplJ8LWKQEem8uZvI
 0N7V9veqRQn8rPICzMukrM0BpLKakXeVYm3DLX/HAsiLLDM=
X-Google-Smtp-Source: APiQypKXxqQzoicXvSSWdIUAyB3vlEzgNJ+G/i3L4EKns4Lj4jrQUJ2qc3fRlLMxYepKYyUWwS+/85WmMWpeacL6W80=
X-Received: by 2002:a0c:ec47:: with SMTP id n7mr11527365qvq.209.1587067690146; 
 Thu, 16 Apr 2020 13:08:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200416153146.4377-1-szab.hu@gmail.com>
In-Reply-To: <20200416153146.4377-1-szab.hu@gmail.com>
From: Szabolcs Hubai <szab.hu@gmail.com>
Date: Thu, 16 Apr 2020 22:07:58 +0200
Message-ID: <CAOZt9c-Zbiusi88FXQBMBWuJ_PA8=Yz5xvQwwuv8pS2vRmR-YQ@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_130812_037039_06D71AD2 
X-CRM114-Status: GOOD (  20.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [szab.hu[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: mt7621: limit dictionary size
 for DIR-860L due to kernel 5.4
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkhCgpTb3JyeSwgSSBkaWRuJ3Qgbm90aWNlZCB0aGF0IHRoZSBsem1hLWxvYWRlciB0aHJlYWQg
WzBdIG9yaWdpbmFsbHkgaGFkCmEgbm90ZSBhYm91dCBESVItODYwTC4KSSByZWFkIHRoZSBsYW5k
ZWQgY29tbWl0cyBvbmx5IHdoaWNoIGRpZG4ndCB0YWxrIGFib3V0IGZvbGxvd3Vwcy4KCgpTdXJl
LCB0aGlzIGRpY3Rpb25hcnkgc2l6ZSBhZGp1c3RtZW50IGlzIGp1c3QgYSB3b3JrYXJvdW5kLCB0
aGUgcmVhbApmaXggd291bGQgYmUgdGhhdCB1cGRhdGVkIGx6bWEtbG9hZGVyLgoKU29ycnkgZm9y
IHRoZSBub2lzZSEKCgpTemFib2xjcwoKCgpbMF0gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
cGlwZXJtYWlsL29wZW53cnQtZGV2ZWwvMjAyMC1BcHJpbC8wMjI4MzQuaHRtbAoKU3phYm9sY3Mg
SHViYWkgPHN6YWIuaHVAZ21haWwuY29tPiBlenQgw61ydGEgKGlkxZFwb250OiAyMDIwLiDDoXBy
LiAxNi4sCkNzLCAxNzozMik6Cj4KPiBTbmFwc2hvdCBpbWFnZXMgZm9yIERJUi04NjBMIGFmdGVy
IHRoZSBpbml0aWFsIGtlcm5lbCA1LjQgbGFuZGluZwo+IChvbiBBcHIgNCwgMjAyMCBjb21taXRz
IGZyb20gYjUxZWE0M2Y5MDAxIHRvIDRkOTc5YTRkMTk2OSkKPiBhcmUgYnJva2VuOiB0aGV5IGNh
dXNlcyAiTFpNQSBFUlJPUiAxIC0gbXVzdCBSRVNFVCBib2FyZCB0byByZWNvdmVyIgo+Cj4gU25h
cHNob3QgZmFjdG9yeSBpbWFnZSBzZXJpYWwgbG9nOgo+IC0tLS0KPiBQbGVhc2UgY2hvb3NlIHRo
ZSBvcGVyYXRpb246Cj4gICAgMTogTG9hZCBzeXN0ZW0gY29kZSB0byBTRFJBTSB2aWEgVEZUUC4K
PiAgICAyOiBMb2FkIHN5c3RlbSBjb2RlIHRoZW4gd3JpdGUgdG8gRmxhc2ggdmlhIFRGVFAuCj4g
ICAgMzogQm9vdCBzeXN0ZW0gY29kZSB2aWEgRmxhc2ggKGRlZmF1bHQpLgo+ICAgIDQ6IEVudHIg
Ym9vdCBjb21tYW5kIGxpbmUgaW50ZXJmYWNlLgo+ICAgIDc6IExvYWQgQm9vdCBMb2FkZXIgY29k
ZSB0aGVuIHdyaXRlIHRvIEZsYXNoIHZpYSBTZXJpYWwuCj4gICAgOTogTG9hZCBCb290IExvYWRl
ciBjb2RlIHRoZW4gd3JpdGUgdG8gRmxhc2ggdmlhIFRGVFAuCj4KPiBZb3UgY2hvb3NlZCAzCj4K
PiAwCj4KPiAzOiBTeXN0ZW0gQm9vdCBzeXN0ZW0gY29kZSB2aWEgRmxhc2guCj4gYWRkcjo4MDUw
MDAwMAo+IFdlIGhhdmUgU0VBTUEsIEltYWdlIFNpemUgPSAyNDI0NzY4Cj4gVmVyaWZ5aW5nIENo
ZWNrc3VtIC4uLgo+IFVuY29tcHJlc3NpbmcgU0VBTUEgbGludXgubHptYSAuLi4gTFpNQSBFUlJP
UiAxIC0gbXVzdCBSRVNFVCBib2FyZCB0byByZWNvdmVyCj4gLS0tLQo+Cj4gVGhlIGxvY2FsIGRl
ZmNvbmZpZyBidWlsZCB3b3JrcywgYWxzbyB0aGUgc25hcHNob3QgaW5pdHJhbWZzIGltYWdlcy4K
Pgo+IFRoZSBidWcgY2FuIGJlIHJlcHJvZHVjZWQgd2l0aCB0aGUgIkNPTkZJR19BTExfS01PRFM9
eSIgY29uZmlndXJhdGlvbi4KPgo+IEFzIHRoaXMgIkxaTUEgRVJST1IgMSIgaXNuJ3QgbmV3IChl
LmcuIDc3ZTJiY2NkZThmNyksCj4gSSB0cmllZCB0byBhZGp1c3QgdGhlIGx6bWEgZGljdGlvbmFy
eSBwYXJhbWV0ZXI6Cj4gLSB3aXRoICItZDIwIiBhbmQgYWJvdmUgaXQgY2F1c2VzICJMWk1BIEVS
Uk9SIDEiCj4gLSB3aXRoICItZDE5IiBpdCBib290cyBidXQgZG9lc24ndCBmaW5kIHRoZSBkZXZp
Y2UgdHJlZSAoc2VlIGJlbG93KQo+IC0gd2l0aCAiLWQxOCIgaXQgYm9vdHMgZmluZQo+Cj4gU2Vy
aWFsIGxvZyB3aXRoICItZDE5IiBsem1hIGRpY3Rpb25hcnk6Cj4gLS0tLQo+IFBsZWFzZSBjaG9v
c2UgdGhlIG9wZXJhdGlvbjoKPiAgICAxOiBMb2FkIHN5c3RlbSBjb2RlIHRvIFNEUkFNIHZpYSBU
RlRQLgo+ICAgIDI6IExvYWQgc3lzdGVtIGNvZGUgdGhlbiB3cml0ZSB0byBGbGFzaCB2aWEgVEZU
UC4KPiAgICAzOiBCb290IHN5c3RlbSBjb2RlIHZpYSBGbGFzaCAoZGVmYXVsdCkuCj4gICAgNDog
RW50ciBib290IGNvbW1hbmQgbGluZSBpbnRlcmZhY2UuCj4gICAgNzogTG9hZCBCb290IExvYWRl
ciBjb2RlIHRoZW4gd3JpdGUgdG8gRmxhc2ggdmlhIFNlcmlhbC4KPiAgICA5OiBMb2FkIEJvb3Qg
TG9hZGVyIGNvZGUgdGhlbiB3cml0ZSB0byBGbGFzaCB2aWEgVEZUUC4KPiAwCj4KPiAzOiBTeXN0
ZW0gQm9vdCBzeXN0ZW0gY29kZSB2aWEgRmxhc2guCj4gYWRkcjo4MDUwMDAwMAo+IFdlIGhhdmUg
U0VBTUEsIEltYWdlIFNpemUgPSA0OTE1MTQwCj4gVmVyaWZ5aW5nIENoZWNrc3VtIC4uLgo+IFVu
Y29tcHJlc3NpbmcgU0VBTUEgbGludXgubHptYSAuLi4gT0sKPgo+IFN0YXJ0aW5nIGtlcm5lbCAu
Li4KPgo+IFsgICAgMC4wMDAwMDBdIExpbnV4IHZlcnNpb24gNS40LjMyICh4YWJvbGNzQHV0MTgw
NCkgKGdjYyB2ZXJzaW9uIDguNC4wIChPcGVuV3J0IEdDQyA4LjQuMCByMTI5NzQtNzVmMTlkZWIz
YSkpICMwIFNNUCBXZWQgQXByIDE1IDAyOjE0OjE5IDIwMjAKPiBbICAgIDAuMDAwMDAwXSBTb0Mg
VHlwZTogTWVkaWFUZWsgTVQ3NjIxIHZlcjoxIGVjbzozCj4gWyAgICAwLjAwMDAwMF0gcHJpbnRr
OiBib290Y29uc29sZSBbZWFybHkwXSBlbmFibGVkCj4gWyAgICAwLjAwMDAwMF0gQ1BVMCByZXZp
c2lvbiBpczogMDAwMTk5MmYgKE1JUFMgMTAwNEtjKQo+IFsgICAgMC4wMDAwMDBdIEluaXRyZCBu
b3QgZm91bmQgb3IgZW1wdHkgLSBkaXNhYmxpbmcgaW5pdHJkCj4gWyAgICAwLjAwMDAwMF0gVlBF
IHRvcG9sb2d5IHsyLDJ9IHRvdGFsIDQKPiBbICAgIDAuMDAwMDAwXSBQcmltYXJ5IGluc3RydWN0
aW9uIGNhY2hlIDMya0IsIFZJUFQsIDQtd2F5LCBsaW5lc2l6ZSAzMiBieXRlcy4KPiBbICAgIDAu
MDAwMDAwXSBQcmltYXJ5IGRhdGEgY2FjaGUgMzJrQiwgNC13YXksIFBJUFQsIG5vIGFsaWFzZXMs
IGxpbmVzaXplIDMyIGJ5dGVzCj4gWyAgICAwLjAwMDAwMF0gTUlQUyBzZWNvbmRhcnkgY2FjaGUg
MjU2a0IsIDgtd2F5LCBsaW5lc2l6ZSAzMiBieXRlcy4KPiBbICAgIDAuMDAwMDAwXSBab25lIHJh
bmdlczoKPiBbICAgIDAuMDAwMDAwXSAgIE5vcm1hbCAgIFttZW0gMHgwMDAwMDAwMDAwMDAwMDAw
LTB4MDAwMDAwMDAwN2ZmZmZmZl0KPiBbICAgIDAuMDAwMDAwXSAgIEhpZ2hNZW0gIGVtcHR5Cj4g
WyAgICAwLjAwMDAwMF0gTW92YWJsZSB6b25lIHN0YXJ0IGZvciBlYWNoIG5vZGUKPiBbICAgIDAu
MDAwMDAwXSBFYXJseSBtZW1vcnkgbm9kZSByYW5nZXMKPiBbICAgIDAuMDAwMDAwXSAgIG5vZGUg
ICAwOiBbbWVtIDB4MDAwMDAwMDAwMDAwMDAwMC0weDAwMDAwMDAwMDdmZmZmZmZdCj4gWyAgICAw
LjAwMDAwMF0gSW5pdG1lbSBzZXR1cCBub2RlIDAgW21lbSAweDAwMDAwMDAwMDAwMDAwMDAtMHgw
MDAwMDAwMDA3ZmZmZmZmXQo+IFsgICAgMC4wMDAwMDBdIE9GOiBmZHQ6IE5vIHZhbGlkIGRldmlj
ZSB0cmVlIGZvdW5kLCBjb250aW51aW5nIHdpdGhvdXQKPiBbICAgIDAuMDAwMDAwXSBwZXJjcHU6
IEVtYmVkZGVkIDE0IHBhZ2VzL2NwdSBzMjY3MDQgcjgxOTIgZDIyNDQ4IHU1NzM0NAo+IFsgICAg
MC4wMDAwMDBdIEJ1aWx0IDEgem9uZWxpc3RzLCBtb2JpbGl0eSBncm91cGluZyBvbi4gIFRvdGFs
IHBhZ2VzOiAzMjQ4MAo+IFsgICAgMC4wMDAwMDBdIEtlcm5lbCBjb21tYW5kIGxpbmU6ICAgcm9v
dGZzdHlwZT1zcXVhc2hmcyxqZmZzMgo+IFsgICAgMC4wMDAwMDBdIERlbnRyeSBjYWNoZSBoYXNo
IHRhYmxlIGVudHJpZXM6IDE2Mzg0IChvcmRlcjogNCwgNjU1MzYgYnl0ZXMsIGxpbmVhcikKPiBb
ICAgIDAuMDAwMDAwXSBJbm9kZS1jYWNoZSBoYXNoIHRhYmxlIGVudHJpZXM6IDgxOTIgKG9yZGVy
OiAzLCAzMjc2OCBieXRlcywgbGluZWFyKQo+IFsgICAgMC4wMDAwMDBdIFdyaXRpbmcgRXJyQ3Rs
IHJlZ2lzdGVyPTAwMDQwNTBjCj4gWyAgICAwLjAwMDAwMF0gUmVhZGJhY2sgRXJyQ3RsIHJlZ2lz
dGVyPTAwMDQwNTBjCj4gWyAgICAwLjAwMDAwMF0gbWVtIGF1dG8taW5pdDogc3RhY2s6b2ZmLCBo
ZWFwIGFsbG9jOm9mZiwgaGVhcCBmcmVlOm9mZgo+IFsgICAgMC4wMDAwMDBdIE1lbW9yeTogMTIw
NzUySy8xMzEwNzJLIGF2YWlsYWJsZSAoNTgyNksga2VybmVsIGNvZGUsIDIwNksgcndkYXRhLCAx
MjUySyByb2RhdGEsIDEyODBLIGluaXQsIDIzN0sgYnNzLCAxMDMyMEsgcmVzZXJ2ZWQsIDBLIGNt
YS1yZXNlcnZlZCwgMEsgaGlnaG1lbSkKPiBbICAgIDAuMDAwMDAwXSBTTFVCOiBIV2FsaWduPTMy
LCBPcmRlcj0wLTMsIE1pbk9iamVjdHM9MCwgQ1BVcz00LCBOb2Rlcz0xCj4gWyAgICAwLjAwMDAw
MF0gcmN1OiBIaWVyYXJjaGljYWwgUkNVIGltcGxlbWVudGF0aW9uLgo+IFsgICAgMC4wMDAwMDBd
IHJjdTogUkNVIGNhbGN1bGF0ZWQgdmFsdWUgb2Ygc2NoZWR1bGVyLWVubGlzdG1lbnQgZGVsYXkg
aXMgMjUgamlmZmllcy4KPiBbICAgIDAuMDAwMDAwXSAtLS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0t
LS0tLS0tLS0tLS0KPiBbICAgIDAuMDAwMDAwXSBXQVJOSU5HOiBDUFU6IDAgUElEOiAwIGF0IGtl
cm5lbC9yY3UvdHJlZS5jOjI5OTggcmN1X2luaXQrMHg1NWMvMHg3NzQKPiBbICAgIDAuMDAwMDAw
XSBNb2R1bGVzIGxpbmtlZCBpbjoKPiBbICAgIDAuMDAwMDAwXSBDUFU6IDAgUElEOiAwIENvbW06
IHN3YXBwZXIvMCBOb3QgdGFpbnRlZCA1LjQuMzIgIzAKPiBbICAgIDAuMDAwMDAwXSBTdGFjayA6
IDAwMDAwMDAwIDgwMDc3NGNjIDgwNmIwMDAwIDgwNmI2NDc0IDgwNzIwMDAwIDgwNmI2NDNjIDgw
NmI1NTkwIDgwNmVmZGI0Cj4gWyAgICAwLjAwMDAwMF0gICAgICAgICA4MDg2MDAwMCA4MDcwMTI0
OCA4MDcwMGQ4MyA4MDY0YzdlNCAwMDAwMDAwMCAwMDAwMDAwMSA4MDZlZmQ1OCAwMDAwMDAwMAo+
IFsgICAgMC4wMDAwMDBdICAgICAgICAgMDAwMDAwMDAgMDAwMDAwMDAgODA4YTAwMDAgMDAwMDAw
MDAgMDAwMDAwMzAgMDAwMDAwMjcgMzQyZTM1MjAgMjAzMjMzMmUKPiBbICAgIDAuMDAwMDAwXSAg
ICAgICAgIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDgwNzIw
MDAwIDAwMDAwMDAwIDgwNzI5OWYwCj4gWyAgICAwLjAwMDAwMF0gICAgICAgICAwMDAwMDAwOSA4
MDY0NTFhNCA4MDZmZTJiMCA4MDcwMDAwMCAwMDAwMDAwMiAwMDAwMDAxMCA4N2ZmMDAwMCAwMDAw
MDAwMAo+IFsgICAgMC4wMDAwMDBdICAgICAgICAgLi4uCj4gWyAgICAwLjAwMDAwMF0gQ2FsbCBU
cmFjZToKPiBbICAgIDAuMDAwMDAwXSBbPDgwMDBiNzJjPl0gc2hvd19zdGFjaysweDMwLzB4MTAw
Cj4gWyAgICAwLjAwMDAwMF0gWzw4MDU4ZmFjND5dIGR1bXBfc3RhY2srMHhhNC8weGRjCj4gWyAg
ICAwLjAwMDAwMF0gWzw4MDAyODAzOD5dIF9fd2FybisweGMwLzB4MTBjCj4gWyAgICAwLjAwMDAw
MF0gWzw4MDAyODBlMD5dIHdhcm5fc2xvd3BhdGhfZm10KzB4NWMvMHhhYwo+IFsgICAgMC4wMDAw
MDBdIFs8ODA3Mjk5ZjA+XSByY3VfaW5pdCsweDU1Yy8weDc3NAo+IFsgICAgMC4wMDAwMDBdIFs8
ODA3MjBhN2M+XSBzdGFydF9rZXJuZWwrMHgyZGMvMHg1NWMKPiBbICAgIDAuMDAwMDAwXSBbPDgw
MDExMDQ0Pl0gc3RhcnRfc2Vjb25kYXJ5KzB4YjAvMHgzYTAKPiBbICAgIDAuMDAwMDAwXSByYW5k
b206IGdldF9yYW5kb21fYnl0ZXMgY2FsbGVkIGZyb20gcHJpbnRfb29wc19lbmRfbWFya2VyKzB4
MmMvMHg2NCB3aXRoIGNybmdfaW5pdD0wCj4gWyAgICAwLjAwMDAwMF0gLS0tWyBlbmQgdHJhY2Ug
MDAwMDAwMDAwMDAwMDAwMCBdLS0tCj4gWyAgICAwLjAwMDAwMF0gLS0tLS0tLS0tLS0tWyBjdXQg
aGVyZSBdLS0tLS0tLS0tLS0tCj4gWyAgICAwLjAwMDAwMF0gV0FSTklORzogQ1BVOiAwIFBJRDog
MCBhdCBrZXJuZWwvcmN1L3RyZWUuYzoyOTk5IHJjdV9pbml0KzB4NWFjLzB4Nzc0Cj4gWyAgICAw
LjAwMDAwMF0gTW9kdWxlcyBsaW5rZWQgaW46Cj4gWyAgICAwLjAwMDAwMF0gQ1BVOiAwIFBJRDog
MCBDb21tOiBzd2FwcGVyLzAgVGFpbnRlZDogRyAgICAgICAgVyAgICAgICAgICA1LjQuMzIgIzAK
PiBbICAgIDAuMDAwMDAwXSBTdGFjayA6IDAwMDAwMDAwIDgwMDc3NGNjIDgwNmIwMDAwIDgwNmI2
NDc0IDgwNzIwMDAwIDgwNmI2NDNjIDgwNmI1NTkwIDgwNmVmZGI0Cj4gWyAgICAwLjAwMDAwMF0g
ICAgICAgICA4MDg2MDAwMCA4MDcwMTI0OCA4MDcwMGQ4MyA4MDY0YzdlNCAwMDAwMDAwMCAwMDAw
MDAwMSA4MDZlZmQ1OCAwMDAwMDAwMAo+IFsgICAgMC4wMDAwMDBdICAgICAgICAgMDAwMDAwMDAg
MDAwMDAwMDAgODA4YTAwMDAgMDAwMDAwMDAgMDAwMDAwMzAgMDAwMDAwM2IgMzQyZTM1MjAgMjAz
MjMzMmUKPiBbICAgIDAuMDAwMDAwXSAgICAgICAgIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAw
IDAwMDAwMDAwIDAwMDAwMDAwIDgwNzIwMDAwIDAwMDAwMDAwIDgwNzI5YTQwCj4gWyAgICAwLjAw
MDAwMF0gICAgICAgICAwMDAwMDAwOSA4MDY0NTFhNCA4MDZmZTJiMCA4MDcwMDAwMCAwMDAwMDAw
MiAwMDAwMDAxMCA4N2ZmMDAwMCAwMDAwMDAwMAo+IFsgICAgMC4wMDAwMDBdICAgICAgICAgLi4u
Cj4gWyAgICAwLjAwMDAwMF0gQ2FsbCBUcmFjZToKPiBbICAgIDAuMDAwMDAwXSBbPDgwMDBiNzJj
Pl0gc2hvd19zdGFjaysweDMwLzB4MTAwCj4gWyAgICAwLjAwMDAwMF0gWzw4MDU4ZmFjND5dIGR1
bXBfc3RhY2srMHhhNC8weGRjCj4gWyAgICAwLjAwMDAwMF0gWzw4MDAyODAzOD5dIF9fd2Fybisw
eGMwLzB4MTBjCj4gWyAgICAwLjAwMDAwMF0gWzw4MDAyODBlMD5dIHdhcm5fc2xvd3BhdGhfZm10
KzB4NWMvMHhhYwo+IFsgICAgMC4wMDAwMDBdIFs8ODA3MjlhNDA+XSByY3VfaW5pdCsweDVhYy8w
eDc3NAo+IFsgICAgMC4wMDAwMDBdIFs8ODA3MjBhN2M+XSBzdGFydF9rZXJuZWwrMHgyZGMvMHg1
NWMKPiBbICAgIDAuMDAwMDAwXSBbPDgwMDExMDQ0Pl0gc3RhcnRfc2Vjb25kYXJ5KzB4YjAvMHgz
YTAKPiBbICAgIDAuMDAwMDAwXSAtLS1bIGVuZCB0cmFjZSBmNjg3MjhhMGQzMDUzYjUyIF0tLS0K
PiBbICAgIDAuMDAwMDAwXSBOUl9JUlFTOiAyNTYKPiBbICAgIDAuMDAwMDAwXSBLZXJuZWwgcGFu
aWMgLSBub3Qgc3luY2luZzogRmFpbGVkIHRvIGZpbmQgbXRrLG10NzYyMS1zeXNjIG5vZGUKPiBb
ICAgIDAuMDAwMDAwXSBSZWJvb3RpbmcgaW4gMSBzZWNvbmRzLi4KPiBbICAgIDAuMDAwMDAwXSBS
ZWJvb3QgZmFpbGVkIC0tIFN5c3RlbSBoYWx0ZWQKPiAtLS0tCj4KPiBTaWduZWQtb2ZmLWJ5OiBT
emFib2xjcyBIdWJhaSA8c3phYi5odUBnbWFpbC5jb20+Cj4gLS0tCj4gIHRhcmdldC9saW51eC9y
YW1pcHMvaW1hZ2UvbXQ3NjIxLm1rIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKQo+Cj4gZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9yYW1pcHMvaW1hZ2UvbXQ3NjIxLm1r
IGIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9pbWFnZS9tdDc2MjEubWsKPiBpbmRleCA2ZTY0ZmI4YmYx
Li5jZmFlMTAzZDIyIDEwMDY0NAo+IC0tLSBhL3RhcmdldC9saW51eC9yYW1pcHMvaW1hZ2UvbXQ3
NjIxLm1rCj4gKysrIGIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9pbWFnZS9tdDc2MjEubWsKPiBAQCAt
MjE4LDYgKzIxOCw3IEBAIGRlZmluZSBEZXZpY2UvZGxpbmtfZGlyLTg2MGwtYjEKPiAgICAkKERl
dmljZS9zZWFtYSkKPiAgICBCTE9DS1NJWkUgOj0gNjRrCj4gICAgU0VBTUFfU0lHTkFUVVJFIDo9
IHdyZ2FjMTNfZGxpbmsuMjAxM2d1aV9kaXI4NjBsYgo+ICsgIEtFUk5FTCA6PSBrZXJuZWwtYmlu
IHwgYXBwZW5kLWR0YiB8IHJlbG9jYXRlLWtlcm5lbCB8IGx6bWEgLWQxOCB8IHVJbWFnZSBsem1h
Cj4gICAgS0VSTkVMIDo9IGtlcm5lbC1iaW4gfCBhcHBlbmQtZHRiIHwgcmVsb2NhdGUta2VybmVs
IHwgbHptYSB8IHVJbWFnZSBsem1hCj4gICAgSU1BR0VfU0laRSA6PSAxNjA2NGsKPiAgICBERVZJ
Q0VfVkVORE9SIDo9IEQtTGluawo+IC0tCj4gMi4xNy4xCj4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9w
ZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK

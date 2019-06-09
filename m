Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C223AB9C
	for <lists+openwrt-devel@lfdr.de>; Sun,  9 Jun 2019 21:27:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+xntrSlnRurCp7mALrsYMu6zNW+VS/7wpdkMo/skQPU=; b=cI0ywXSX1NA7GV
	VyigYtQeaFAiq5AZ7iKmWSzZCFZI6ib4zTcCfRxb9VWggnN3daN17j2dw24CAT50BAttUZ9Hq9zkQ
	Ztds+rHEuFRGB3gBml0Og+kt7137CruTpWww8NL2ik3r1s/UkrT7IlqO2bbutrBHbilfF/q+5DUxb
	LTXKOWtOs9jrjs6HIc64T2fflJwgWk1wI0AsFS7fAWAuG/+j8gs1Ym5TY1TetcmYE0M2jZVfXwdix
	wOG4sSY7WvuLgPkKCv90IacTDWI1zOlRxIT86762wgcTIi1oNMmC8Jr6jfSz0RiSDk7CM7WIra41t
	I7Rr7oIGzzP5dkIYKqYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha3Td-00079U-44; Sun, 09 Jun 2019 19:27:37 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha3TW-00078z-LL
 for openwrt-devel@lists.openwrt.org; Sun, 09 Jun 2019 19:27:32 +0000
Received: by mail-qk1-x741.google.com with SMTP id s22so4371146qkj.12
 for <openwrt-devel@lists.openwrt.org>; Sun, 09 Jun 2019 12:27:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=1VGLH5Z5FbNAYXX+jgE8Q/qZaJKerbqn712AMCMZmow=;
 b=nHcMsiuoi0lS8JXCFvfVMfBKi0P10czm7w+M6LnGE2MPwiyWyR4NN3Y4TyldY88r0k
 rLpvfM3vWA/nZVPLeSygWrv1xZFvAQ/Mk4kWaM5J3QZoP7yo/sSOHadKA/N2Zu7etPou
 P6t9T5wvydij/p7y5GNPwdL84+vhuQYnVTXknxZNwz5NjiNDzGOiGR9r4fSqqAhmZfYV
 XOqekn3d4F/BE2uwt/CIpATJLD0kjJFw3QmB4EDV01CU9XiQN5iB9O6ETX4mTxP+Dkx4
 zCFeaQihbK1nSvGveM9OaYtxXuK6JkBubC13e+1mjIzPoWT5QAwAIeaBdfyIDpYFoj8h
 NeHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=1VGLH5Z5FbNAYXX+jgE8Q/qZaJKerbqn712AMCMZmow=;
 b=FB4GXfJkDUQHRmUGblTXRYu50LngtmxR+agQEuA4ElL6W2lllyvl32wtQl2UdKmddP
 ysBOb9dXHw+Md319LtjdkOUZSrqbep9aDqDd7MziaEUqGSwoK/Bx0qhriIdSxWNRTvOT
 sqR+kSLPfDcBIosz6xzVAxFKl+MgPxIbigJtwuz8aOem12Hdgk+Pp58LoCECg0pFEKRC
 5xvsNNAxbTVPevY79ztbtk7gz8gAc3VX0ow9xRKh7RlXFcrYulbYnz2WEfJTzjHM9qC0
 qLTjI3JS6boymOV0B0aCVkW9ZmZB8RCI7p5mAfXIipkowtKK/qnYTkaU+DTO8RhJsCkT
 PIog==
X-Gm-Message-State: APjAAAXyMP74SV7j32Q1zZRw4fLMEZP3ppJ3ZmmFGNdw27GkTbIgY+LF
 mUBYL7SHjMHI216B1u93PqE4SnkT3zD/TfzeqYLyYg==
X-Google-Smtp-Source: APXvYqwkL3RxhzEsKzirjh400qXnLnN6q3nE84sWjDEEscUqQivbfAjalVvXjlCZi1INzfrGEHPBHhSMms47mH6ZTxU=
X-Received: by 2002:ae9:e8c2:: with SMTP id
 a185mr10355824qkg.358.1560108446609; 
 Sun, 09 Jun 2019 12:27:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190608114809.9480-1-avalentin@marcant.net>
 <20190608114809.9480-3-avalentin@marcant.net>
In-Reply-To: <20190608114809.9480-3-avalentin@marcant.net>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Sun, 9 Jun 2019 21:27:15 +0200
Message-ID: <CAJLcKsEPFZWBcuTiVUL_mt1Qk6JXrg-q=jj7bvRDXESKrLVptw@mail.gmail.com>
To: =?UTF-8?Q?Andr=C3=A9_Valentin?= <avalentin@marcant.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_122730_731835_78EF7B98 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v3 2/3] network/config: add xfrm
 interface support scripts
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

T24gU2F0LCBKdW4gOCwgMjAxOSBhdCAxOjQ4IFBNIEFuZHLDqSBWYWxlbnRpbiA8YXZhbGVudGlu
QG1hcmNhbnQubmV0PiB3cm90ZToKPgo+IFRoaXMgcGFja2FnZSBhZGRzIHNjcmlwdHMgZm9yIHhm
cm0gaW50ZXJmYWNlcyBzdXBwb3J0Lgo+IEV4YW1wbGUgY29uZmlndXJhdGlvbiB2aWEgL2V0Yy9j
b25maWcvbmV0d29yazoKPgo+IGNvbmZpZyBpbnRlcmZhY2UgJ3hmcm0wJwo+ICAgICAgICAgb3B0
aW9uIHByb3RvICd4ZnJtJwo+ICAgICAgICAgb3B0aW9uIG10dSAnMTMwMCcKPiAgICAgICAgIG9w
dGlvbiB6b25lICdWUE4nCj4gICAgICAgICBvcHRpb24gdHVubGluayAnd2FuJwo+ICAgICAgICAg
b3B0aW9uIGlmaWQgMzAKPgo+IGNvbmZpZyBpbnRlcmZhY2UgJ3hmcm0wX3N0YXRpYycKPiAgICAg
ICAgIG9wdGlvbiBwcm90byAnc3RhdGljJwo+ICAgICAgICAgb3B0aW9uIGlmbmFtZSAnQHhmcm0w
Jwo+ICAgICAgICAgb3B0aW9uIGlwNmFkZHIgJ2ZlODA6OjEvNjQnCj4gICAgICAgICBvcHRpb24g
aXBhZGRyICcxMC4wLjAuMS8zMCcKPgo+IE5vdyBzZXQgaW4gc3Ryb25nc3dhbiBJUHNlYyBwb2xp
Y3k6Cj4gICAgICAgICBpZl9pZF9pbiA9IDMwCj4gICAgICAgICBpZl9pZF9vdXQgPSAzMAo+IC0t
LQo+ICBwYWNrYWdlL25ldHdvcmsvY29uZmlnL3hmcm0vTWFrZWZpbGUgICAgICB8IDM4ICsrKysr
KysrKysrKysrKysrKwo+ICBwYWNrYWdlL25ldHdvcmsvY29uZmlnL3hmcm0vZmlsZXMveGZybS5z
aCB8IDY1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgMiBmaWxlcyBjaGFuZ2Vk
LCAxMDMgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgcGFja2FnZS9uZXR3b3Jr
L2NvbmZpZy94ZnJtL01ha2VmaWxlCj4gIGNyZWF0ZSBtb2RlIDEwMDc1NSBwYWNrYWdlL25ldHdv
cmsvY29uZmlnL3hmcm0vZmlsZXMveGZybS5zaAo+Cj4gZGlmZiAtLWdpdCBhL3BhY2thZ2UvbmV0
d29yay9jb25maWcveGZybS9NYWtlZmlsZSBiL3BhY2thZ2UvbmV0d29yay9jb25maWcveGZybS9N
YWtlZmlsZQo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMC4uZWZjOTBj
ZjMxOAo+IC0tLSAvZGV2L251bGwKPiArKysgYi9wYWNrYWdlL25ldHdvcmsvY29uZmlnL3hmcm0v
TWFrZWZpbGUKPiBAQCAtMCwwICsxLDM4IEBACj4gKwo+ICtpbmNsdWRlICQoVE9QRElSKS9ydWxl
cy5tawo+ICsKPiArUEtHX05BTUU6PXhmcm0KPiArUEtHX1ZFUlNJT046PTEKPiArUEtHX1JFTEVB
U0U6PTEKPiArUEtHX0xJQ0VOU0U6PUdQTC0yLjAKPiArCj4gK2luY2x1ZGUgJChJTkNMVURFX0RJ
UikvcGFja2FnZS5tawo+ICsKPiArZGVmaW5lIFBhY2thZ2UveGZybS9EZWZhdWx0Cj4gKyAgU0VD
VElPTjo9bmV0Cj4gKyAgQ0FURUdPUlk6PU5ldHdvcmsKPiArICBNQUlOVEFJTkVSOj1BbmRyZSBW
YWxlbnRpbiA8YXZhbGVudGluQG1hcmNhbnQubmV0Pgo+ICtlbmRlZgo+ICsKPiArZGVmaW5lIFBh
Y2thZ2UveGZybQo+ICskKGNhbGwgUGFja2FnZS94ZnJtL0RlZmF1bHQpCj4gKyAgVElUTEU6PVhG
Uk0gSVBzZWMgVHVubmVsIEludGVyZmFjZSBjb25maWcgc3VwcG9ydAo+ICsgIERFUEVORFM6PStr
bW9kLXhmcm0taW50ZXJmYWNlCj4gK2VuZGVmCj4gKwo+ICtkZWZpbmUgUGFja2FnZS94ZnJtL2Rl
c2NyaXB0aW9uCj4gKyBYRlJNIElQc2VjIFR1bm5lbCBJbnRlcmZhY2UgY29uZmlnIHN1cHBvcnQg
KElQdjQgYW5kIElQdjYpIGluIC9ldGMvY29uZmlnL25ldHdvcmsuCj4gK2VuZGVmCj4gKwo+ICtk
ZWZpbmUgQnVpbGQvQ29tcGlsZQo+ICtlbmRlZgo+ICsKPiArZGVmaW5lIEJ1aWxkL0NvbmZpZ3Vy
ZQo+ICtlbmRlZgo+ICsKPiArZGVmaW5lIFBhY2thZ2UveGZybS9pbnN0YWxsCj4gKyAgICAgICAk
KElOU1RBTExfRElSKSAkKDEpL2xpYi9uZXRpZmQvcHJvdG8KPiArICAgICAgICQoSU5TVEFMTF9C
SU4pIC4vZmlsZXMveGZybS5zaCAkKDEpL2xpYi9uZXRpZmQvcHJvdG8veGZybS5zaAo+ICtlbmRl
Zgo+ICsKPiArJChldmFsICQoY2FsbCBCdWlsZFBhY2thZ2UseGZybSkpCj4gZGlmZiAtLWdpdCBh
L3BhY2thZ2UvbmV0d29yay9jb25maWcveGZybS9maWxlcy94ZnJtLnNoIGIvcGFja2FnZS9uZXR3
b3JrL2NvbmZpZy94ZnJtL2ZpbGVzL3hmcm0uc2gKPiBuZXcgZmlsZSBtb2RlIDEwMDc1NQo+IGlu
ZGV4IDAwMDAwMDAwMDAuLmRmMjhkMzg2MTMKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvcGFja2Fn
ZS9uZXR3b3JrL2NvbmZpZy94ZnJtL2ZpbGVzL3hmcm0uc2gKPiBAQCAtMCwwICsxLDY1IEBACj4g
KyMhL2Jpbi9zaAo+ICsKPiArWyAtbiAiJElOQ0xVREVfT05MWSIgXSB8fCB7Cj4gKyAgICAgICAu
IC9saWIvZnVuY3Rpb25zLnNoCj4gKyAgICAgICAuIC9saWIvZnVuY3Rpb25zL25ldHdvcmsuc2gK
PiArICAgICAgIC4gLi4vbmV0aWZkLXByb3RvLnNoCj4gKyAgICAgICBpbml0X3Byb3RvICIkQCIK
PiArfQo+ICsKPiArcHJvdG9feGZybV9zZXR1cCgpIHsKPiArICAgICAgIGxvY2FsIGNmZz0iJDEi
Cj4gKyAgICAgICBsb2NhbCBtb2RlPSJ4ZnJtIgo+ICsKPiArICAgICAgIGxvY2FsIHR1bmxpbmsg
aWZpZCBtdHUgem9uZQo+ICsgICAgICAganNvbl9nZXRfdmFycyB0dW5saW5rIGlmaWQgbXR1IHpv
bmUKPiArCj4gKyAgICAgICBwcm90b19pbml0X3VwZGF0ZSAiJGNmZyIgMQo+ICsKPiArICAgICAg
IHByb3RvX2FkZF90dW5uZWwKPiArICAgICAgIGpzb25fYWRkX3N0cmluZyBtb2RlICIkbW9kZSIK
PiArICAgICAgIGpzb25fYWRkX2ludCBtdHUgIiR7bXR1Oi0xMjgwfSIKPiArCj4gKyAgICAgICBb
IC16ICIkdHVubGluayIgXSAmJiB7Cj4gKyAgICAgICAgICAgICAgIHByb3RvX25vdGlmeV9lcnJv
ciAiJGNmZyIgTk9fVFVOTElOSwo+ICsgICAgICAgICAgICAgICBwcm90b19ibG9ja19yZXN0YXJ0
ICIkY2ZnIgo+ICsgICAgICAgICAgICAgICBleGl0Cj4gKyAgICAgICB9Cj4gKyAgICAgICBqc29u
X2FkZF9zdHJpbmcgbGluayAiJHR1bmxpbmsiCj4gKwo+ICsgICAgICAgWyAteiAiJGlmaWQiIF0g
JiYgewo+ICsgICAgICAgICAgICAgICBwcm90b19ub3RpZnlfZXJyb3IgIiRjZmciIE5PX0lGSUQK
PiArICAgICAgICAgICAgICAgcHJvdG9fYmxvY2tfcmVzdGFydCAiJGNmZyIKPiArICAgICAgICAg
ICAgICAgZXhpdAo+ICsgICAgICAgfQo+ICsgICAgICAganNvbl9hZGRfb2JqZWN0ICdkYXRhJwo+
ICsgICAgICAgWyAtbiAiJGlmaWQiIF0gJiYganNvbl9hZGRfaW50IGlmaWQgIiRpZmlkIgo+ICsg
ICAgICAganNvbl9jbG9zZV9vYmplY3QKPiArCj4gKyAgICAgICBwcm90b19jbG9zZV90dW5uZWwK
PiArCj4gKyAgICAgICBwcm90b19hZGRfZGF0YQo+ICsgICAgICAgWyAtbiAiJHpvbmUiIF0gJiYg
anNvbl9hZGRfc3RyaW5nIHpvbmUgIiR6b25lIgo+ICsgICAgICAgcHJvdG9fY2xvc2VfZGF0YQo+
ICsKPiArICAgICAgIHByb3RvX3NlbmRfdXBkYXRlICIkY2ZnIgo+ICt9Cj4gKwo+ICtwcm90b194
ZnJtX3RlYXJkb3duKCkgewo+ICsgICAgICAgbG9jYWwgY2ZnPSIkMSIKPiArfQo+ICsKPiArcHJv
dG9feGZybV9pbml0X2NvbmZpZygpIHsKPiArICAgICAgIG5vX2RldmljZT0xCj4gKyAgICAgICBh
dmFpbGFibGU9MQo+ICsKPiArICAgICAgIHByb3RvX2NvbmZpZ19hZGRfaW50ICJtdHUiCj4gKyAg
ICAgICBwcm90b19jb25maWdfYWRkX3N0cmluZyAidHVubGluayIKPiArICAgICAgIHByb3RvX2Nv
bmZpZ19hZGRfc3RyaW5nICJ6b25lIgo+ICsgICAgICAgcHJvdG9fY29uZmlnX2FkZF9pbnQgImlm
aWQiCj4gK30KPiArCj4gKwo+ICtbIC1uICIkSU5DTFVERV9PTkxZIiBdIHx8IHsKPiArICAgICAg
IFsgLWYgL2xpYi9tb2R1bGVzLyQodW5hbWUgLXIpL3hmcm1faW50ZXJmYWNlLmtvIC1vIC1kIC9z
eXMvbW9kdWxlL3hmcm1faW50ZXJmYWNlIF0gJiYgYWRkX3Byb3RvY29sIHhmcm0KSSBtaXNzZWQg
dGhlIGNoZWNrIGZvciAvc3lzL21vZHVsZS94ZnJtX2ludGVyZmFjZSBpbiBteSBpbml0aWFsCnJl
dmlldzsgaXMgdGhlcmUgYW55IHNwZWNpZmljIHJlYXNvbiBmb3IgdGhpcyBhZGRpdGlvbmFsIGNo
ZWNrIGJlc2lkZQp0aGUgeGZybV9pbnRlcmZhY2Uua28gY2hlY2sgPwoKSGFucwo+ICt9Cj4gLS0K
PiAyLjExLjAKPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMu
b3BlbndydC5vcmcKPiBodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Blbndy
dC1kZXZlbAo=

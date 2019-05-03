Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ABEB13372
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 May 2019 20:00:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQUS6vSIKKHXegIL8TCaWJeL0pdXVBiWFUmAEjprqHQ=; b=aA+KQaaRzqrcGa
	kxbHCg/Tw8Az7XUC7QPYhogCacbhJkCY25xbsGjVls1GssD8ElilHb2PjTdfyyLuBwdV3Uypn7jmH
	fRTEmR4PQjcbVWjVe310CYPuMd9q5dryGUKlbXFeZktz5XZSgukVJKgCsEPsXs0wGoIflQ7Ndux4+
	p+WUgc3WSaQQ00C64H6lEKqA97yt0cdflAMEKTsIQNtWEJ3xI3QwOZCec9Ph+NjpwlW7/m3kRRVOT
	5VD7pGLnEVcluRo92hUy43kf5Ql8P2Y2D4bNpKmu5oEOwDiALcui8AVk14GHhkfz2aNt4Oe+iYeD+
	OMuU513Q6GMMrmLVDc5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMcUA-0002WA-NA; Fri, 03 May 2019 18:00:38 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMcU3-0002VU-BJ
 for openwrt-devel@lists.openwrt.org; Fri, 03 May 2019 18:00:32 +0000
Received: by mail-ot1-x341.google.com with SMTP id b18so6080506otq.3
 for <openwrt-devel@lists.openwrt.org>; Fri, 03 May 2019 11:00:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=BDcECzcpM2w0Ji74H/eRauD9Zy9sJ912o3cmxb74+gQ=;
 b=LIaNZhIPZI8WN+3HPqqGqAcJMvvBF0Sf564E2ij5IRtWfYIXPFWYVel1mw279uH72T
 bA9GJfC9J7zCuPzKWW+FTmR2zcrkJPhFlXk0N3IBwc94I3vsNoJR3GeZcCnvbSP5zh+O
 HcmG/69P4AfUczfQx9ei0c7ub30LnvHGo73FJlytqCW6ov8ZhJJAVEnz6lYuconMQgEH
 +Bd5GkK8YqIphVZvKMcarC/acfks7/UaCi0tb69paTYLrRtBMGc4160+8FP/HJOAxhfv
 5YhMhzPKCynTeJRrnMnigS9yITgfrFm5BbuJPtFAKq44QpQYQ5uFXu50g8clRUbGc43v
 64XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=BDcECzcpM2w0Ji74H/eRauD9Zy9sJ912o3cmxb74+gQ=;
 b=mBjeJWAw9ddXSMgHrbuu64uvnUTO0hjbqj9L4WVxhWNg/M+bkUocZo+K+9c6rpjGTI
 BwTQRNu1+XgTqSK8jyfUvwDVd8yum++etfbPQ0anfpZXzW5DzfEI+FBsKZnJJVSfwC1M
 mZqeOC3K0TwOoWf60swaUbMgba1g2gQCZ4EVDyD6/7cC1JXbiEVptMmQ74OdKoNDbPmi
 uMCNTuC1INkG4dD1jdJ+IRYn1ec6tEaamGt6J1BqIgZzaNH9+jjNRCp9HBSZppoQTmdH
 DjAAlpL5ZBkhtKrP2wWAjq8MibJNYe3WlfoX8asZR+MQvpuIm6aL4w4x0+4ol2z1HFMe
 NxPQ==
X-Gm-Message-State: APjAAAW9vxmTP9cVy/Z8jIzggm+KvME/C4VN7+nyaRP1l/7EU5GgU+NT
 v3IP1IsXDTwkCFDV/iBJ8zmerL1vCxhyBUEytyA=
X-Google-Smtp-Source: APXvYqzlCDNYkYY/48H77O9A/P7vhFPG9xq0e0n7g6p/dmT/iFM4pb6O46MlWRvtTvYfeKgyc5140ixVPwLX3xkiQm4=
X-Received: by 2002:a05:6830:1418:: with SMTP id
 v24mr7663241otp.273.1556906429838; 
 Fri, 03 May 2019 11:00:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190501170520.4733-1-rosenp@gmail.com>
 <20190503171216.GA29467@meh.true.cz>
In-Reply-To: <20190503171216.GA29467@meh.true.cz>
From: Rosen Penev <rosenp@gmail.com>
Date: Fri, 3 May 2019 11:00:18 -0700
Message-ID: <CAKxU2N-yN3BqJD3asR7V7rO7Bpxq9aO+4ciKtj03z+KBTx5E8A@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_110031_388816_545CCDF5 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] elfutils: Fix compile with uClibc-ng
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

T24gRnJpLCBNYXkgMywgMjAxOSBhdCAxMDoxMiBBTSBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVl
LmN6PiB3cm90ZToKPgo+IFJvc2VuIFBlbmV2IDxyb3NlbnBAZ21haWwuY29tPiBbMjAxOS0wNS0w
MSAxMDowNToyMF06Cj4KPiBIaSwKPgo+ID4gUHJvYmFibHkgZ2xpYmMgdG9vLiBhcmdwX2hlbHAg
dGFrZXMgYSBjaGFyICouIG5vdCBjb25zdCBjaGFyICouCj4KPiBJJ20gd29uZGVyaW5nIGlmIHdl
IG5lZWQgdG8gY2FyeSBhbm90aGVyIHBhdGNoIGZvcmV2ZXIsIHRodXMgaWYgaXQgd291bGRuJ3Qg
YmUKPiBiZXR0ZXIgdG8gYmFja3BvcnQgdXBzdHJlYW1lZCBwYXRjaCBhbmQvb3IgYnVtcCB0byBm
aXhlZCB1cHN0cmVhbSB2ZXJzaW9uLgpKdXN0IHNlbnQgdXBzdHJlYW0uCj4KPiAtLSB5bmV6ego+
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBSb3NlbiBQZW5ldiA8cm9zZW5wQGdtYWlsLmNvbT4KPiA+IC0t
LQo+ID4gIHBhY2thZ2UvbGlicy9lbGZ1dGlscy9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAg
ICAgIHwgIDIgKy0KPiA+ICAuLi4vbGlicy9lbGZ1dGlscy9wYXRjaGVzLzIwMC11Y2xpYmMtbmct
Y29tcGF0LnBhdGNoICB8IDExICsrKysrKysrKysrCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAxMiBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IHBhY2th
Z2UvbGlicy9lbGZ1dGlscy9wYXRjaGVzLzIwMC11Y2xpYmMtbmctY29tcGF0LnBhdGNoCj4gPgo+
ID4gZGlmZiAtLWdpdCBhL3BhY2thZ2UvbGlicy9lbGZ1dGlscy9NYWtlZmlsZSBiL3BhY2thZ2Uv
bGlicy9lbGZ1dGlscy9NYWtlZmlsZQo+ID4gaW5kZXggYzZiMWQ2ZGY2NS4uZTE0OGRmMDk2YyAx
MDA2NDQKPiA+IC0tLSBhL3BhY2thZ2UvbGlicy9lbGZ1dGlscy9NYWtlZmlsZQo+ID4gKysrIGIv
cGFja2FnZS9saWJzL2VsZnV0aWxzL01ha2VmaWxlCj4gPiBAQCAtOSw3ICs5LDcgQEAgaW5jbHVk
ZSAkKFRPUERJUikvcnVsZXMubWsKPiA+Cj4gPiAgUEtHX05BTUU6PWVsZnV0aWxzCj4gPiAgUEtH
X1ZFUlNJT046PTAuMTc2Cj4gPiAtUEtHX1JFTEVBU0U6PTEKPiA+ICtQS0dfUkVMRUFTRTo9Mgo+
ID4KPiA+ICBQS0dfU09VUkNFOj0kKFBLR19OQU1FKS0kKFBLR19WRVJTSU9OKS50YXIuYnoyCj4g
PiAgUEtHX1NPVVJDRV9VUkw6PWh0dHBzOi8vc291cmNld2FyZS5vcmcvJChQS0dfTkFNRSkvZnRw
LyQoUEtHX1ZFUlNJT04pCj4gPiBkaWZmIC0tZ2l0IGEvcGFja2FnZS9saWJzL2VsZnV0aWxzL3Bh
dGNoZXMvMjAwLXVjbGliYy1uZy1jb21wYXQucGF0Y2ggYi9wYWNrYWdlL2xpYnMvZWxmdXRpbHMv
cGF0Y2hlcy8yMDAtdWNsaWJjLW5nLWNvbXBhdC5wYXRjaAo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2
NDQKPiA+IGluZGV4IDAwMDAwMDAwMDAuLmIwYWUxYzc0MDEKPiA+IC0tLSAvZGV2L251bGwKPiA+
ICsrKyBiL3BhY2thZ2UvbGlicy9lbGZ1dGlscy9wYXRjaGVzLzIwMC11Y2xpYmMtbmctY29tcGF0
LnBhdGNoCj4gPiBAQCAtMCwwICsxLDExIEBACj4gPiArLS0tIGEvbGliL2NvbG9yLmMKPiA+ICsr
KysgYi9saWIvY29sb3IuYwo+ID4gK0BAIC0xMzIsNyArMTMyLDcgQEAgdmFsaWQgYXJndW1lbnRz
IGFyZTpcblwKPiA+ICsgICAtICdhdXRvJywgJ3R0eScsICdpZi10dHknXG4iKSwKPiA+ICsgICAg
ICAgICAgICAgICAgICBwcm9ncmFtX2ludm9jYXRpb25fc2hvcnRfbmFtZSwgYXJnKTsKPiA+ICsg
ICAgICAgICAgIGFyZ3BfaGVscCAoJmNvbG9yX2FyZ3AsIHN0ZGVyciwgQVJHUF9IRUxQX1NFRSwK
PiA+ICstICAgICAgICAgICAgICAgICAgICAgcHJvZ3JhbV9pbnZvY2F0aW9uX3Nob3J0X25hbWUp
Owo+ID4gKysgICAgICAgICAgICAgICAgICAgICAoY2hhciAqKSBwcm9ncmFtX2ludm9jYXRpb25f
c2hvcnRfbmFtZSk7Cj4gPiArICAgICAgICAgICBleGl0IChFWElUX0ZBSUxVUkUpOwo+ID4gKyAg
ICAgICAgIH0KPiA+ICsgICAgIH0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlz
dHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L29wZW53cnQtZGV2ZWwK

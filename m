Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 530554B754
	for <lists+openwrt-devel@lfdr.de>; Wed, 19 Jun 2019 13:47:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ILRh+ZrNaoFLnU+BPbf1hLFkcuFSkgHd6Pi114PYdJg=; b=P4yolikZBkdEnq
	g1W8RApepIoACK0JfJvF3DXHIa65JHwdz93F3RWpaMBfifuEV5Ifx29G2aSCLggt7EZHFeUqspbM2
	bXnQzQC+7EbLHTPt7WpO95N+i8LzNMkJBFF1AVxFFNp1dSP2DHrslTN0bxEbph5TT+uIbL/G0k2q9
	t+gOweXRcBXJGr2/J6Ppb31Rlg+Uxh84VoChK/i4baoPC59F5LKMUsGutqDo4E6s7So/ZFR5pw8+C
	izj0WdetPPNmgVSGtP+qRbR78F/xT5d9zC3TTEeF6iKCaCfbKl+SAZoxgg2XYzLuyqdQv+IeZv+4g
	r+Eq7lEvzo1b+g2Xbdcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdZ3J-0001IJ-SJ; Wed, 19 Jun 2019 11:46:57 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdZ3A-0001Ht-Mw
 for openwrt-devel@lists.openwrt.org; Wed, 19 Jun 2019 11:46:50 +0000
Received: by mail-lj1-x241.google.com with SMTP id r9so2943792ljg.5
 for <openwrt-devel@lists.openwrt.org>; Wed, 19 Jun 2019 04:46:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=xLhDQmrx21AmSmQ6yBbyfp7OkSiISjeBLcOyQb0Wakw=;
 b=b6Nmq1ZQDLW9jxZcpVQx35QVQnFuVpZZaXcmsIrcI6K2k218ivL82mWzCTP0fWDdjj
 cztWoFw5LBOFdEenCmpN9mMdqau4xEnWqnG56lFLYhkTk7DuGFCEKOxT7RJH+d53dAqr
 3C5q2xOTRgyvVUn7qVfUCVdgz97Z1/HtYtsq46YHYTxtvDboJ+aUtMgSjXZM/ChXNvKg
 NsEKXxaRGLOYbzAsente3tr9/bYlZuMPVqwHs9hXAMNlQI7OXg0VqfCGgZULPPdE5NeF
 Oq2Ow5oemH3KyIbWsqRc5+2CaxNFGHMEuq/HVvYxYG/4Sh297GaGvbD5af/KxlyaJgul
 nqsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=xLhDQmrx21AmSmQ6yBbyfp7OkSiISjeBLcOyQb0Wakw=;
 b=IqFuSftkeHzGkwbFSdSX4bCGO762jqu/jQZHJFkdMZx3yDGm0QtJR6BdtECW8LNNx7
 Xis96ex8ocQ/Xg0U2UaCX1qqKlOJ/tMwyKunUwfD1kE7YGfSWTsAsdtb67ud5RfEGMto
 BFM2eE7EcRb2BmjGTODvRVcWuYO6l7SDLur/ByLbFMkD7ceHlRas3wBiXxt1DBVhwA34
 08GInaKdNSJJRKU2eNBsJnE2MFBSuzVKy2imbpctF5qyJeMObYEUfXTGfBwhcrmWeV7c
 ZwbUUVauGvqm8uEeXylu8ZWL8FAJMQYDIslDh+r5AWW68iWyIbBT85DaDkL+PU40khRl
 Ccvw==
X-Gm-Message-State: APjAAAW3oI64Vu0FUjJGOfNt768Z9Yamfe66tZPd/CcB/xEJ6MkVXQsx
 mzys/TWKSPlObc+7B/E43ZEMM9REgPeXH4p3IF8=
X-Google-Smtp-Source: APXvYqyVmJMyxBNMyGosmREnYeBsRE1nCphQhVRL9GS9VxQhh4mI5kBKy5QRO8AXgItURT60+NgstC+GKBNaPfmgfwQ=
X-Received: by 2002:a2e:8801:: with SMTP id x1mr17861331ljh.1.1560944807010;
 Wed, 19 Jun 2019 04:46:47 -0700 (PDT)
MIME-Version: 1.0
References: <1560802136-4157-1-git-send-email-ynezz@true.cz>
 <1560802136-4157-7-git-send-email-ynezz@true.cz>
In-Reply-To: <1560802136-4157-7-git-send-email-ynezz@true.cz>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Wed, 19 Jun 2019 19:46:35 +0800
Message-ID: <CAECwjAhcmb3wzpy1_tF8Uh9=BwzEKmBu4ERtg+SHHo8+17hBHQ@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_044648_751498_4A77463B 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 6/6] build: cleanup possibly dangling
 Python 2 host symlink
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

T24gVHVlLCAxOCBKdW4gMjAxOSBhdCAwNDoxMCwgUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5j
ej4gd3JvdGU6Cj4KPiBXaGVuIGJ1bXBpbmcgYnVpbGRyb290IHRvIFB5dGhvbiAzLCB3ZSBuZWVk
IHRvIGFzc3VyZSwgdGhhdCBQeXRob24KPiBzeW1saW5rIGluIHN0YWdpbmcgYmluIGRpcmVjdG9y
eSBwb2ludHMgdG8gUHl0aG9uID49IDMuNSBhcyB3ZWxsLgoKSSB0aG91Z2h0IGBsbiAtc2ZgIGlu
IHByZXZpb3VzIHBhdGNoIHdpbGwgdXBkYXRlIHRoYXQgc3ltbGluayB0bwpweXRob24zLiAgSXNu
J3QgdGhhdCB0aGUgY2FzZT8KCj4KPiBTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6
ekB0cnVlLmN6Pgo+IC0tLQo+ICBpbmNsdWRlL3ByZXJlcS1idWlsZC5tayB8ICAyICsrCj4gIGlu
Y2x1ZGUvcHJlcmVxLm1rICAgICAgIHwgMTEgKysrKysrKysrKysKPiAgMiBmaWxlcyBjaGFuZ2Vk
LCAxMyBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9wcmVyZXEtYnVpbGQu
bWsgYi9pbmNsdWRlL3ByZXJlcS1idWlsZC5tawo+IGluZGV4IGM1MmNhNzE5MDg3Yy4uNDBkZjg5
NTc1ZDllIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvcHJlcmVxLWJ1aWxkLm1rCj4gKysrIGIvaW5j
bHVkZS9wcmVyZXEtYnVpbGQubWsKPiBAQCAtMTQxLDYgKzE0MSw4IEBAICQoZXZhbCAkKGNhbGwg
U2V0dXBIb3N0Q29tbWFuZCx3Z2V0LFBsZWFzZSBpbnN0YWxsIEdOVSAnd2dldCcsIFwKPiAgJChl
dmFsICQoY2FsbCBTZXR1cEhvc3RDb21tYW5kLHBlcmwsUGxlYXNlIGluc3RhbGwgUGVybCA1Lngs
IFwKPiAgICAgICAgIHBlcmwgLS12ZXJzaW9uIHwgZ3JlcCAicGVybC4qdjUiKSkKPgo+ICskKGV2
YWwgJChjYWxsIENsZWFudXBQeXRob24yKSkKPiArCj4gICQoZXZhbCAkKGNhbGwgU2V0dXBIb3N0
Q29tbWFuZCxweXRob24sUGxlYXNlIGluc3RhbGwgUHl0aG9uID49IDMuNSwgXAo+ICAgICAgICAg
cHl0aG9uMy43IC1WIDI+JjEgfCBncmVwIC1FICdQeXRob24gM1wuWzUtOV1cLj8nLCBcCj4gICAg
ICAgICBweXRob24zLjYgLVYgMj4mMSB8IGdyZXAgLUUgJ1B5dGhvbiAzXC5bNS05XVwuPycsIFwK
PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9wcmVyZXEubWsgYi9pbmNsdWRlL3ByZXJlcS5tawo+IGlu
ZGV4IDBmMGYyNTM3NDQ4Zi4uNTFhMGE4NzllM2RjIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvcHJl
cmVxLm1rCj4gKysrIGIvaW5jbHVkZS9wcmVyZXEubWsKPiBAQCAtNjYsNiArNjYsMTcgQEAgZGVm
aW5lIFJlcXVpcmVIZWFkZXIKPiAgICAkJChldmFsICQkKGNhbGwgUmVxdWlyZSwkKDEpLCQoMikp
KQo+ICBlbmRlZgo+Cj4gK2RlZmluZSBDbGVhbnVwUHl0aG9uMgo+ICsgIGRlZmluZSBSZXF1aXJl
L3B5dGhvbjItY2xlYW51cAo+ICsgICAgICAgWyAtZiAiJChTVEFHSU5HX0RJUl9IT1NUKS9iaW4v
cHl0aG9uIiBdICYmIFwKPiArICAgICAgICAgICAgICAgJChTVEFHSU5HX0RJUl9IT1NUKS9iaW4v
cHl0aG9uIC1WIDI+JjEgfCBcCj4gKyAgICAgICAgICAgICAgIGdyZXAgLUUgJ1B5dGhvbiAzXC5b
NS05XVwuPycgPiAvZGV2L251bGwgMj4mMSB8fCBcCj4gKyAgICAgICAgICAgICAgIHJtICQoU1RB
R0lOR19ESVJfSE9TVCkvYmluL3B5dGhvbgoKRnJlc2ggY2xvbmUgYW5kIGJ1aWxkIHdoZW4gZG9p
bmcgdGhlIHJtIGNvbW1hbmQgd2lsbCByZXBvcnQgIm5vIHN1Y2gKZmlsZSBvciBkaXJlY3Rvcnki
PwoKTWF5YmUgdGhpcyB3aWxsIGRvCgppZiBbIC1mICQoU1RBR0lOR19ESVJfSE9TVCkvYmluL3B5
dGhvbiBdICYmCiQoU1RBR0lOR19ESVJfSE9TVCkvYmluL3B5dGhvbiAtViAyPiYxIHwgZ3JlcCAt
cSAnUHl0aG9uIDNcLls1LTldJzsKdGhlbiBcCiAgICAgICAgcm0gJChTVEFHSU5HX0RJUl9IT1NU
KS9iaW4vcHl0aG9uOyBcCmZpCgpSZWdhcmRzLAogICAgICAgICAgICAgICAgeW91c29uZwoKPiAr
ICBlbmRlZgo+ICsKPiArICAkJChldmFsICQkKGNhbGwgUmVxdWlyZSxweXRob24yLWNsZWFudXAp
KQo+ICtlbmRlZgo+ICsKPiAgZGVmaW5lIFF1b3RlSG9zdENvbW1hbmQKPiAgJyQoc3Vic3QgJywn
IiciJywkKHN0cmlwICQoMSkpKScKPiAgZW5kZWYKPiAtLQo+IDEuOS4xCj4KPgo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4gaHR0cHM6Ly9s
aXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFp
bGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5v
cGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK

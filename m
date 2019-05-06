Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C55BF144FB
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 May 2019 09:06:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ia1s9xTDFgJh61t5i+m+xL9HjEe7rbuVQbFbquOhAOU=; b=IpLoHjfPjDLpZy
	R6CbVoWcOCgq63feFKdbTVKrmWTdoMEcD9AAVoeeFUgrAnfhcefOR6OpmK7oPm8WiibxNgppRq+S+
	xyRP/mLHTSdj4pieBQ/fUOtNOe/PRFuGduUq1olIsTWB+Gd4uP4PpjZ5y1lNedZPlLUD0QLdE+se/
	R0kxMvlUvGkdG6anveMzdXK0274QaxFn9r39Z4PIBAoemSKWBgZNLgKsLSGMpKhrgZ1feEmVoY+9c
	EbqtQ8si8xXcEtBODOcrLSo0g1O0uE0xvDnmkltzEdrfqj8jdSNPjF6cNTjn2u8QKLfjSBOl2UMOA
	wLb/Q0G9I0hdGVnrMlPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNXi6-0001zv-EF; Mon, 06 May 2019 07:06:50 +0000
Received: from mail-yw1-xc2f.google.com ([2607:f8b0:4864:20::c2f])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNXi0-0001zO-57
 for openwrt-devel@lists.openwrt.org; Mon, 06 May 2019 07:06:45 +0000
Received: by mail-yw1-xc2f.google.com with SMTP id 18so4816434ywe.7
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 May 2019 00:06:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3JGXH6nBSeF6jLAajooYg34RKZdg68+ad8tmEddRYV8=;
 b=PKos8evcva31EE2k6fOXyHXHTkyRUxw9ypHB/VPuPjkw8HKNucQecurv7GKLFV1T7+
 3AA8NDHWPeE8fNCVyMTMn6E5fv14HLdp65o1GNgpEseEUVEpWjJx1sMhXJ7bVScWISks
 O5s1UlrUVB28VWCGU3yjxdWF+odWBjuLSl6EqxnICXQNrGZVM8YlL05Fe7DoEM1uixSc
 qIS1TObKoicxh1dqEJ+Mbsf5Y3yiOvTMq8H1rTdZUDSDwfBFXAZo7ct5BZzGkp3bc39c
 cBRuaPnjp2Lrfu1qylfu6WKx3iHTmoEuU5WDopt4/12/0J8k/Xvo580NcRReYy1bv/xw
 HYLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3JGXH6nBSeF6jLAajooYg34RKZdg68+ad8tmEddRYV8=;
 b=EMs8pOYJLCvgRrvEy3MKx1QaZJZvotoQiOQ9qHrNu5HDj5l5ZSemqp54ftqOWTDP5j
 Vv1NJm33M2L8DlO9HZQKs2SaR8Vr+ZsjcMNqtEKfpLsp18LEzP/1CXTu5ngstqtTOe3l
 14mVsvWalx95xLq6hJvSVXdKZcpnduCXljS8ke2uSs6hlq0FRup0L/H4+JPahGOKBH2m
 5XHonqkJgPPQwL8u3ylc9mM/EOdImM91xwGCDGPjXcGwSkuWKC713tPloiXULNE2CpfT
 zILBnWKZHewFD3iUKLtM2Yk90FBUtgejVLR3m7PFjXCVIOU/9Hhe+GCslZ312rb5ZY5h
 2fyA==
X-Gm-Message-State: APjAAAWhhK646lZueqkK8MC0KmlZOcGGhrKdzETYfgW5lcYjpITsr0zi
 R5NhW3yQHtgbrtZFGhO/apEr23JiAgOywm2txeqKOHBmyDU=
X-Google-Smtp-Source: APXvYqw9ZgIuiE7BE5xcO7iHThTAHAklljMxm3d+xyegNEP8uFs+v+Db+Kzy/oexh2eKKSrRzwkQ71FeNmyNjhe1AhE=
X-Received: by 2002:a81:5f56:: with SMTP id t83mr17345496ywb.179.1557126402481; 
 Mon, 06 May 2019 00:06:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190505111107.2778-1-markus@mscheck.de>
In-Reply-To: <20190505111107.2778-1-markus@mscheck.de>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Mon, 6 May 2019 09:06:31 +0200
Message-ID: <CACna6ryEEV0F_Vi9xe22T-ebMJ5Tv9fpjNeur68UT+V49C-=5Q@mail.gmail.com>
To: markus@mscheck.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_000644_190797_9F506E47 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c2f listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add support for Xiaomi Mi
 Router 4A (100M Edition)
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

T24gU3VuLCA1IE1heSAyMDE5IGF0IDEzOjExLCA8bWFya3VzQG1zY2hlY2suZGU+IHdyb3RlOgo+
IGRpZmYgLS1naXQgYS90YXJnZXQvbGludXgvcmFtaXBzL2R0cy9YSUFPTUktTUlSNEEtMTAwTS5k
dHMgYi90YXJnZXQvbGludXgvcmFtaXBzL2R0cy9YSUFPTUktTUlSNEEtMTAwTS5kdHMKPiBuZXcg
ZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAuLjcxNmI2NmFjNDQKPiAtLS0gL2Rl
di9udWxsCj4gKysrIGIvdGFyZ2V0L2xpbnV4L3JhbWlwcy9kdHMvWElBT01JLU1JUjRBLTEwME0u
ZHRzCj4gQEAgLTAsMCArMSwxNDYgQEAKPiArL2R0cy12MS87Cj4gKwo+ICsjaW5jbHVkZSAibXQ3
NjI4YW4uZHRzaSIKClBsZWFzZSBpbmNsdWRlIFNQRFggbGluZSB3aXRoIC5kdHMgZmlsZSBsaWNl
bnNlLCBzZWU6Cmh0dHBzOi8vb3BlbndydC5vcmcvc3VibWl0dGluZy1wYXRjaGVzI2R0c19jaGVj
a2xpc3QKCi0tIApSYWZhxYIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMu
b3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29w
ZW53cnQtZGV2ZWwK

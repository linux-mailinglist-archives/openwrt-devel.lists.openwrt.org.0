Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C01D518E4CA
	for <lists+openwrt-devel@lfdr.de>; Sat, 21 Mar 2020 22:37:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pz/od4mUcheOieZ71lavrgTOgG+1/h1SAFMahBR5mDA=; b=Wos8bTJ/p9TVYp
	qpshER8bwfMGDJoE4bedsmtntgSiC6Wb2r+/wfaFL3UE+OAoiKoPBDM0zSkBNCGoQDBcwODIdsJk1
	dhUQeaEo1zqu4Lhu5LYmF3z+8VPByIjJRGu6emlDbWTvqZggCMCY387U82w57foOZEuSMQ12X/Y6e
	VbUpMVayHM/hJKUrte+N6woZpP0tPvg8v7eSNKfIWro0Giz5v9Z9JZHQeQjITDzYbBnNHfhfj2PL8
	Wgz7U0ubaqJSujBxv6f3mzb/Bgx9X/45fiQ73S2Rc0oocIwqi+nZ+XhVO6wp21lFGDTX8a9en48Wo
	4Ws03pqmaKqGZnhctXCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFloF-000761-AW; Sat, 21 Mar 2020 21:37:35 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFlo6-000752-Gp
 for openwrt-devel@lists.openwrt.org; Sat, 21 Mar 2020 21:37:28 +0000
Received: by mail-yb1-xb44.google.com with SMTP id d186so4699805ybh.1
 for <openwrt-devel@lists.openwrt.org>; Sat, 21 Mar 2020 14:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=AFhR4eQX50A6Ugq6m43QTwvSema0MNQEUK4+Zpvf4Ks=;
 b=tHsA3h6ZanYmJjU95FRNAjDzjZ/oQmk7n+Ji9tGiPRSBZT6s+4oTZeDgVV91ufOrxo
 dyeAHev3kxukxgPyowFcw0LSRVQmH2RyxytOhUOKE2xAggl2QZfypqrjXeuNV6SBOIUC
 S++Zo1i9D2xoh4TThN4/lu7vPe4WBu02VwvPXC9veE7hke2nSaKHzpxQ/o2nPnwWpvnc
 BcXsji/GkaeW7Udxf/nCtmWSd6XNqAonyO9v11oW0N7NSUwYcGh3ZfwxboNNjowWNQzC
 qiDWCbeFWyyWjsLwUYdZnkhiAFN4DxHtWYEcQoK0Zuny85GM8fRa15kRtxbUvv24SL40
 07ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=AFhR4eQX50A6Ugq6m43QTwvSema0MNQEUK4+Zpvf4Ks=;
 b=naFT3sJHfle6zhITOkJGiPqYf5rHJb4NcfiSFTWEtx5eR6x8lCG8XpH6mQTFT24EnY
 tyqG6M0glPGWDJAF9tZSk93hBBCgpggCb2sP+dBxYz9l11nLHdE47Q67g9g7v034nJqA
 sv0WSQydSrQIY5pzcbOS5SJ+L7+JYm+eXjRr0uVrZkhtk5vdqHDm4NIjqqf5GUJOoGFk
 Al+UbBUTxJ+pppt9u+bVaXtQ9R8Y1Ri7A5l1EfBOTtdZ3LLxzlgIvPCSDbqaIdQyuxZX
 ll0NfLh+HIRwJL2nD6K4m90+ZcT+HKDTnsuflVVYXAbs6HrQZUfKpKFNaY3pveaVnV0N
 UCtQ==
X-Gm-Message-State: ANhLgQ2CSMDvxHrhymC7HEJ/mTF2ODn+vgjtYrOnQGyaaaf9kPM++EM2
 0jcuUkimlU8LfTTWqBclatAyXaQur+Kikg1sn+r/eQ==
X-Google-Smtp-Source: ADFU+vvqEEzC55ZgUw267IM0hCmd8H7tVJ0k5n5eHd4mXmv1A8ThS5s5DunRs2/7c8T9KV/UruscX+vm0/ZEzUmavTU=
X-Received: by 2002:a25:bfd1:: with SMTP id q17mr25803279ybm.71.1584826641949; 
 Sat, 21 Mar 2020 14:37:21 -0700 (PDT)
MIME-Version: 1.0
References: <20191230065453.3067-1-zajec5@gmail.com>
 <01d301d5bf23$4231faf0$c695f0d0$@adrianschmutzler.de>
In-Reply-To: <01d301d5bf23$4231faf0$c695f0d0$@adrianschmutzler.de>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date: Sat, 21 Mar 2020 22:37:10 +0100
Message-ID: <CACna6rx6KthQmnLa-uF8UdvFHzxWfr_oS+NJ4QRtfCChCDarXQ@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_143726_586491_5D41CBD4 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zajec5[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] samba36: log error if getting device
 info failed
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
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gTW9uLCAzMCBEZWMgMjAxOSBhdCAxNjoxMCwgPG1haWxAYWRyaWFuc2NobXV0emxlci5kZT4g
d3JvdGU6Cj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTogb3BlbndydC1k
ZXZlbCBbbWFpbHRvOm9wZW53cnQtZGV2ZWwtYm91bmNlc0BsaXN0cy5vcGVud3J0Lm9yZ10KPiA+
IE9uIEJlaGFsZiBPZiBSYWZhbCBNaWxlY2tpCj4gPiBTZW50OiBNb250YWcsIDMwLiBEZXplbWJl
ciAyMDE5IDA3OjU1Cj4gPiBUbzogb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+ID4g
Q2M6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KPiA+IFN1YmplY3Q6IFtPcGVu
V3J0LURldmVsXSBbUEFUQ0hdIHNhbWJhMzY6IGxvZyBlcnJvciBpZiBnZXR0aW5nIGRldmljZSBp
bmZvCj4gPiBmYWlsZWQKPiA+Cj4KPiBhcmUgeW91IGF3YXJlIG9mIGh0dHBzOi8vZ2l0aHViLmNv
bS9vcGVud3J0L29wZW53cnQvcHVsbC8yMzY4IG9yIGlzIHRoaXMKPiBqdXN0IG1lYW50IGZvciBi
YWNrcG9ydGluZz8KCkhleSwgSSB3YXNuJ3QgYXdhcmUgb2YgdGhhdCwgdGhhbmtzLCBGV0lXIEkg
cHVzaGVkIG15IHBhdGNoLCBsZXQncyBzZWUKaG93IGRyb3BwaW5nIHNhbWJhMzYgZ29lcyBvbi4K
Ci0tIApSYWZhxYIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQt
ZGV2ZWwK

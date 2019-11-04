Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F10EE46A
	for <lists+openwrt-devel@lfdr.de>; Mon,  4 Nov 2019 17:10:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LxWxaJC1YTtkX2fVXzObLibKpF/nqteZsl5kgsvugTA=; b=I7Y+Mmp9pr1Q0C
	SZPAhNOnFCub/NxRCIQevkWu+V8D58feRGGc6kyyDO0Dmc3ONbI4aLmN8Q240N/CyL/rsHHwOktun
	vkO6B90xIPwT16+rRLVTxqFv13tgvsgPoOoJ5kNPqMAtY6RQNNAFRgHWfjvuEktjLpEASrWAdsUqE
	zUcvuSgk3Ml4MltzNbo+6V4OU9V3P39vW1jdvuuopl8+VpMrd7lIy6pdlVtSzNRFRWW46vYWzCcD1
	ci0u4oFrAQOiOOyaynWPInuAs96bPMMas9iJCX+u8jwX6E4L0P+tLWtOkx2c4hz6z9RpEJQift4hJ
	U+rdVt/5FIlSIP7vjM5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRew3-0004U4-2Q; Mon, 04 Nov 2019 16:10:31 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRevw-0004Tk-Ky
 for openwrt-devel@lists.openwrt.org; Mon, 04 Nov 2019 16:10:25 +0000
Received: by mail-io1-xd42.google.com with SMTP id c6so19014555ioo.13
 for <openwrt-devel@lists.openwrt.org>; Mon, 04 Nov 2019 08:10:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=zcsgNuCeTbjOsp5hpZV2Sruo3TlM8hxlIBRAq+KwvL4=;
 b=mQQRADVxGu4HpJb0DJqjQOAuG+2/ZSDcZlLG8Jp7Xmnknpg4a4pc8Py8fuVHjv9w/E
 ZVbk+DqFvxg27CLZBdJRZTsdpjvEeGEZ8UAslH27U9YsJEmlvqZizdmpRcJPiD9eGE8P
 EKj/aG3FXhJuY0519LocS6u2A/IUANt4GBGmTIkbUSsAzZp7XJyIKj8kYmveLdtxW5eH
 4I8X2FALdRkTAtkKrHLrpIiW1ftr+pz7KsGykW+QAuI9TXfCWbC9vphaHlByr4gtMmNl
 ixW013nFwqgskQuiuiyEH7S62dTiN9dHdDugbftHqFLevtrRR6cJ0NHn5ZcW0tWw5O/i
 zYXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=zcsgNuCeTbjOsp5hpZV2Sruo3TlM8hxlIBRAq+KwvL4=;
 b=MAF9EuPRsiUGvzHmxZmy9CceIebfL5NOO/g78/2ClWCFyQy3hp+TK6KMiVbRWHKduf
 AXgGg0WIJhZRJTOK26zkkSP9wu9d2wUIA/sNchSZcsTNt6GETRhy371wA/3eAj7BN8TO
 T8dKehZvEqUPz4QQsZTA02McEiMFWVIL+zsyHrLIzW0igD+bd1xDrnMpEd8dur7b9cq7
 /iYxBW6VmPfFOV23eO3PMjDiSgAFQNP4f3AkFaUD7rbmTqqq/RT3j7W69IjwTcAb4u/I
 ZeHOIIkpJSrD/tUjIFFTK/BVlILG9qqdDzcn9NgVj9HKIUy+APL9xuZnpd1CPu+Jj0U4
 rsbw==
X-Gm-Message-State: APjAAAWeCvmxVRd1ZShvM/V2BFLezWCQNcfJQzCSFrRw4rMUxwSik7Sv
 AUE8fXF0hjJiaSvQtpFeRKiTCYfu7/z5VG7A4hd1LA+Y
X-Google-Smtp-Source: APXvYqxMVBqh9JD5o0H41+ldW0rXzm2Am9nqd/HAmo9HAFXiiG+YwPo4KrWDAGcUNRvmZ32Az2uERe930ejd2PSaUlg=
X-Received: by 2002:a5d:81cf:: with SMTP id t15mr6069375iol.288.1572883823591; 
 Mon, 04 Nov 2019 08:10:23 -0800 (PST)
MIME-Version: 1.0
References: <20191104104348.63115-1-freifunk@adrianschmutzler.de>
 <CAKfDRXiaLznBL2xovCvtX_iV2c4qhdJr8gU5rpEs4j=bdFBerw@mail.gmail.com>
 <022601d59325$91e93330$b5bb9990$@adrianschmutzler.de>
In-Reply-To: <022601d59325$91e93330$b5bb9990$@adrianschmutzler.de>
From: Kristian Evensen <kristian.evensen@gmail.com>
Date: Mon, 4 Nov 2019 17:10:12 +0100
Message-ID: <CAKfDRXjsPaQg5OTymNCOeSukVLjjRdX5DpgcDb0WVrhAcG2_Gg@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_081024_712540_C6FC63E9 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2 1/2] base-files: always store label
 MAC address in uci system config
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

On Mon, Nov 4, 2019 at 4:36 PM Adrian Schmutzler
<mail@adrianschmutzler.de> wrote:
> However, I'm not aware of a case where board.json is used for anything else than setting up config files, like in a script with user-interaction etc.

While I agree that those are the most common use-cases for board.json,
board.json is used by for example luci to determine which parts of
network configuration to display.

> So, if I want to bring the label MAC address to users updating to 20.xx/master, I'd either have to use board.json in get_mac_label, or add label_macaddr for those not having it even though /etc/config/system already exists. One could still think about providing a label_macaddr option in uci only for _overwriting_ the provided value.

I am not overly familiar with them, but I think this problem can be
resolved by a uci-defaults script. As far as I have understood, those
scripts are run once and then remove. You could create a script that
checks board.json/device tree (basically a combination of the changes
in your patch) and update system-config accordingly.

BR,
Kristian

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

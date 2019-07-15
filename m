Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59291681BE
	for <lists+openwrt-devel@lfdr.de>; Mon, 15 Jul 2019 02:12:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=F8aHWapcomret5vHycj8pESeL4lXJzPSzjHOqswQMNY=; b=tgK
	Aw4eA1QKP94n45AERP0g42ocgmlBSZI967OO2mqdZNOYjnsOXpyL0D0God09qfElRAtaOxzjFz34e
	rpg+9I359EkM9IGfhMkm9Qhms8E5gw5ITOAc/r10kV0rRql2C3LbZb8moUevGkhtRsna6RUrE95l4
	o0flDb3YCfKhPnyylATEmX0LUOGDRB/WXWT85beDwMYnIdQkQ+ONYyzv5mYRQYU4NH89W6xwXSGwU
	6lzzBEPigWgcG6hSgsVGtvjE12uaZPXB1b5z+BQh1rTBy+Cw8j+6uB1bEkGhQ4+xtuy6MCBwJy/MC
	5FiSHS5eTd3zrS9laCIj4AOR0+du+Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmobg-0001ow-14; Mon, 15 Jul 2019 00:12:40 +0000
Received: from mail-io1-xd2a.google.com ([2607:f8b0:4864:20::d2a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmobX-0001oP-2Y
 for openwrt-devel@lists.openwrt.org; Mon, 15 Jul 2019 00:12:32 +0000
Received: by mail-io1-xd2a.google.com with SMTP id g20so31359245ioc.12
 for <openwrt-devel@lists.openwrt.org>; Sun, 14 Jul 2019 17:12:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=KLyu2fLf9El0cnDKh4Yig9D6tgZpuz3J8lRUgVXzS7Q=;
 b=Se8tEDrYiJf+/giBnKSsgu+QD81Jx1itOKIjrEybz9Pw5uq5WZITpO7h5yEFbmWPIt
 NANR0Gc6S/lXwzKd7DAAZLhh8CZuGnZTGlGh9YTVPekQsLxRiO9rqDI+PMIbAkNG6ILB
 Wo3Pk50RH/7pqp92tziG6zmLFz83C6r3jjGWBbYbO37VSUn+42KJZAsA2lEwfkWGQc4D
 e+4XGRghJ2dlYn92DqxD0FUvWldQwOWMHyX1Yw7TmkzOHS/ZmSPZLRolUyHfA9PnW+qt
 xIWUVycDSG76YwyZQm41xEFAQuAtmMImbYbHBZbMtxRpNhNxPiPm1LLdQrnr1IMQaFUi
 wOog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=KLyu2fLf9El0cnDKh4Yig9D6tgZpuz3J8lRUgVXzS7Q=;
 b=q+eP6eXi8C/SH8Or02hGyxI58nEV/oRlG1RzP9p1If7ZPVQ30UXl/7efOpFNF1gNpO
 DvvjyhdE4aI/shYmCSq0aT8eUe6lG+dSBqmL4+ziXHL7Lxs3lQPVPvynhI8cG3q+RRfm
 PHnEvbN/C9ZNPS44n5hHwM4S46Z/h7yKlKJMbA+KkT1xEe8MWi0jscJ3QvWmAl1krhWi
 x9vUQpoTu9tviHdrzg4vmqKKC7haXvqqEIvtFbiwNj33AR7ypG2EP/TjKLZZvdGzI+zc
 Zp35EM7wuD3xL+oIFSXOf7ZelX7h6QGmEasbttLq5OaPRvhnUrWEC9kGidliWDlYncWS
 Vq8A==
X-Gm-Message-State: APjAAAUc8ss1A0w92x2Y3HZsvwpgZ8ZewXn+8bWRAC9Ui8YyTW4TTdHj
 LF/CI1L3q/akpk+wQG33OuuHuRY7M+P/L0hE6p+eWQ==
X-Google-Smtp-Source: APXvYqxOv4l7Qz8UQktF8v9Zba2awzem5OY8Vx+7CMHI2f1e+fj83wJQMQaRXV0uc23TVW/tZIC2rUMoEiwKoKjp+p8=
X-Received: by 2002:a02:b395:: with SMTP id p21mr24928694jan.31.1563149546767; 
 Sun, 14 Jul 2019 17:12:26 -0700 (PDT)
MIME-Version: 1.0
From: Ansuel Smith <ansuelsmth@gmail.com>
Date: Mon, 15 Jul 2019 02:12:15 +0200
Message-ID: <CA+_ehUwuKazd6yg3_UR4+Dx_=x5ZuECGAJJoj2Om0DfUuEsDSg@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_171231_119994_539768BE 
X-CRM114-Status: UNSURE (   3.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2a listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ansuelsmth[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] fstools review incomplete
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello i notice 2 of 4 patched has been accepted. Can someone review
the other 2? Also why the changes didn't got merged in master?

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

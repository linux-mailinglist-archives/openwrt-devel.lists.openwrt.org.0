Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5A114F951
	for <lists+openwrt-devel@lfdr.de>; Sat,  1 Feb 2020 19:07:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:In-Reply-To:References:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QOyatVcL4Ofp6nF6ALmaCgeP3FzIW8VbujTm0eZxl3A=; b=u5gBP2j6cFaeMq76UOxuce1UN
	DAPmJqXHIeQrDipyPsHxm6jsr32ugB/ogqNzkhHIfrQ7bmNgflf/hJAjVbaSIIeGOI52Ccvz8Ul5b
	zXKe72KqvJBckTTKbS9NkEiGKwa4KE1XVtawy0pTG/zbQ+tPTd89M9NAF0+jvmPptTK49Fc6IJ4e0
	/gXkP7ttPPfGYDcEx/6+14+qHAhrOpWIGwDugTYFlLAJ1NsIK9NFOmUSYBJ68qHiJ24aFyK94WBMd
	/+dMbhYLo/I2O9ECOMN+gK1jeB3D2XBuVPgBGqHBXyiK2uhrfIrOuQJOGqh/c693ZCZ/Ku89zlLOd
	DRCik86Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixxBN-0004aM-9l; Sat, 01 Feb 2020 18:07:49 +0000
References: <00cd01d5d928$14be1b20$3e3a5160$@adrianschmutzler.de>
In-Reply-To: <00cd01d5d928$14be1b20$3e3a5160$@adrianschmutzler.de>
Date: Sat, 1 Feb 2020 19:07:26 +0100
To: mail@adrianschmutzler.de
MIME-Version: 1.0
Message-ID: <mailman.28088.1580580462.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Martin Blumenstingl via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] ath79 equivalent of disable_smarteee
Content-Type: multipart/mixed; boundary="===============1885585519479032824=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1885585519479032824==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============1885585519479032824==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixxBD-0004Zv-U2
	for openwrt-devel@lists.openwrt.org; Sat, 01 Feb 2020 18:07:41 +0000
Received: by mail-ed1-x544.google.com with SMTP id dc19so11395494edb.10
        for <openwrt-devel@lists.openwrt.org>; Sat, 01 Feb 2020 10:07:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mYgxQ8zwCOHyjeehdGja1N+XyJW/K9iEXNCCiU165WU=;
        b=fdTfEgelkIclvVoGditwVxBOYlt+n+if506QtqWLlFu81jHAbJD4CSx1fqwxlXnjjK
         Sw5iPpQjbWy/izsMrhYlmSKDXqSsxlXoRUYnH4QhHm+oqI7FH8nd/8o/h79Ewkc2LOl1
         z1Eq83EQzFy+uJpwIfaLCtaVhKim918PtUrTWiad/32oqY+8iau5Uzncs4/hT6IX0f+T
         tBMLZ4cYpRxh8o2syCvfXWkZOcsvoOfAJU5u/yp/ASOGThB1x8b4tKpgCR/MuEI/w57x
         jRle3UjPgz5fMr4SGqic8SHPp7A92F7qmZEswUDy4qPc2xapKXoR8brxpXKLUHYZaPXR
         ib1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mYgxQ8zwCOHyjeehdGja1N+XyJW/K9iEXNCCiU165WU=;
        b=JPPESNJUAk1OO95sxufELiBmf2On1kqbzgQvj2lZnamBsXGQ1BA3AZzQtep/KwCUgS
         489SIX2b6Gy2YQIVyhMqvb7H+0juZyx5iC6wyck2eR2OQZDZpQ7P+N425X22p1JFQXaO
         Bb4/3Nued4Du5Xryj3/0NTzMMS/JoIiXxXdW4REoLVoTcDNLIJSfOy/x8uH/Grb2M3oe
         +knIMlKlx+IyyLAkLTpqJLJvMAON2YFCYhmupOpikRpus/ngvVf8R4/rDEd8IbA6Zd+R
         uiQju3XY+hHhrQ5hFIgb6MNnbLkgnQegAZ14myohnVWw0IX8qWMf+hw0Tu9G9QjaxNoz
         gbjQ==
X-Gm-Message-State: APjAAAUj9UEZ/aVJ3BZmsSk7ufjRF6Oe/MitX7s+fnb7lWXA5MWlqPkr
	sI/W+mhMOGpQanV/auTXRcwwhO9TABydzt9ywwT6ogXQ
X-Google-Smtp-Source: APXvYqwdo8QBedlMr5CW+W+Oq77yufutJ99iqFLpTIGohOEnYGw4T4UApE0zrNFU/U605s9pNn6yfiVxfZX+GK4kvd8=
X-Received: by 2002:a17:906:9716:: with SMTP id k22mr13358690ejx.233.1580580457057;
 Sat, 01 Feb 2020 10:07:37 -0800 (PST)
MIME-Version: 1.0
References: <00cd01d5d928$14be1b20$3e3a5160$@adrianschmutzler.de>
In-Reply-To: <00cd01d5d928$14be1b20$3e3a5160$@adrianschmutzler.de>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 1 Feb 2020 19:07:26 +0100
Message-ID: <CAFBinCBRhs50AiBnaZQ5eoYZ4ZvCxaDnYENfpLPRQPErO6PCtA@mail.gmail.com>
Subject: Re: [OpenWrt-Devel] ath79 equivalent of disable_smarteee
To: mail@adrianschmutzler.de
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200201_100739_993589_B039817C 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [2a00:1450:4864:20:0:0:0:544 listed in]
                             [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature

Hi Adrian,

On Sat, Feb 1, 2020 at 6:50 PM <mail@adrianschmutzler.de> wrote:
>
> Hi,
>
> in the device support PR for MikroTik RouterBOARD 922UAGS-5HPacD [1] for ath79, we have the following in ar71xx mach files [2]:
>
> static struct at803x_platform_data rb922gs_at803x_data = {
>         .disable_smarteee = 1,
> };
>
> Is there an ath79 equivalent available and necessary?
upstream has the following two properties (which need to be added
inside the Ethernet PHY devicetree node):
- eee-broken-100tx
- eee-broken-1000t
- (there are more, see Documentation/devicetree/bindings/net/ethernet-phy.yaml)

set them and EEE will not be advertised anymore.

there's some additional, AT803X PHY specific register write inside
at803x_disable_smarteee from
target/linux/generic/pending-4.14/734-net-phy-at803x-allow-to-configure-via-pdata.patch
This modifies the AT803X_PCS_SMART_EEE_CTRL3 register. I don't know
whether this is necessary when EEE is not advertised


Martin


--===============1885585519479032824==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1885585519479032824==--

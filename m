Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B8D1AFF21
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 02:16:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7pXLYhGhdbF0OjqTLhxWJ9mMp+N5KtkqmCP2K5xDfoI=; b=Blt
	siZI899sQEYRtTzIkHRuryeuXSgxUZWVj+xieLaSJz81Bme9FjnmHG8tc/dgm7OyJa3Mx17FHBPvD
	f8RRwtgXMIO7s41lT+3AKCaxnpBFclTcoBTwQpYbLCE8M5PR4F6IOREhR53Z+35OQKLMpPsiF1tIA
	BYEigRB8lUNsWm+TbyD6APhM5RIxphG0tWMdtEKJhL3umxZa6OUa5O4rYJ9SryIS+JHNfUriPnLix
	sGKy7u6KHFeaAT5egIT6Ko6rv8cavUlBsJ6nh/Slnm4BaaCRNg39h0AMUr9vQyKypGy3+CagHcQOW
	vu5dolItgUSwdGu50NRZZ5cWtWsc3oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQK6r-0008Dw-Vb; Mon, 20 Apr 2020 00:16:25 +0000
Received: from mail-il1-x12a.google.com ([2607:f8b0:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQK6j-0008Co-Rm
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 00:16:19 +0000
Received: by mail-il1-x12a.google.com with SMTP id s10so7324600iln.11
 for <openwrt-devel@lists.openwrt.org>; Sun, 19 Apr 2020 17:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=aKY9zHUYEGZrOI06XtITL35VS1+MkjTvGXe9r5ZoZaM=;
 b=AJ+xIUyGlMpaqKK1ojakdOFWk7xaICP1Gv3482qxHMUc8Hi/Mm7dv+i5BCiIZzBOxT
 y5NxPBnLy6wFYFSW0HnTUWAYFqjou00/tZNjSni0/R4R/OnocoIUGvOGSzqkFbuWvUaC
 TewU6giPwc7FRFHKYgttWy8hz49Tpu5vE3RULAUYmubweYBV2sdYQt0SMWHMrCTKYKqo
 7GFHP+KsrOZhkZwVlb9RKtCkY5EbUiFOC45nQZBS15IkYVgFCxNarscVhyzbb2e2REUM
 Nk/X7t7+4brci18Bbdr4Y0lxtOu7UfGyyb7RBmA4qxV5y3R2YIoNwbD/wkt0U4XxajA8
 3Qvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=aKY9zHUYEGZrOI06XtITL35VS1+MkjTvGXe9r5ZoZaM=;
 b=WKHXhpEGmr9rQ59tA2zP8rHB8A6MmOA16XaSkNy0oTE//Htc4XqRXjKHpd+Mjt+ZhH
 DwcTUZ8JS6jAZIAcI0n7wTIipQFq4aFsJW44MS5oYMeOq6UKX2Nx9jKrx9vj5tnIfaI/
 8fl/er41hxbXlKDDsjy8GhlCfeJ76EzhYiTBh/ggNZhJr5VbJ2slqa4NrbpfgPYVWuKH
 2cmBVltH7WK6YDKrcq0TJ0y9Z+nqd9XDbFUs9/NhuOajKDjuFmAvkhJ4+1ZniVK67jC8
 TlANeq35/sYObxqrVjgahnyry2LpL67g3dPOLu5PQ6eiQJG4NVrWVmO++7IzDhntFdoU
 tHoQ==
X-Gm-Message-State: AGi0PuYHaMDl0Y0S4jIGHyZgCp7bf8EEYpZlCJ2WyFxgL+eVaDMhDs/j
 5GPw6Yee1O+grBzbI01/Edptz0ZQ9L+O5UUC3iaQUX1xkbo=
X-Google-Smtp-Source: APiQypJm73Tz4Y4LJBxdnaq2+4mp1GKdQ7l/h71AQ2irAf259x57xpl9jjbJ61WCbr1ZdILEySbs+wtoFLidB9vZoBg=
X-Received: by 2002:a92:dc43:: with SMTP id x3mr14312864ilq.102.1587341774595; 
 Sun, 19 Apr 2020 17:16:14 -0700 (PDT)
MIME-Version: 1.0
From: Etienne Champetier <champetier.etienne@gmail.com>
Date: Sun, 19 Apr 2020 20:16:03 -0400
Message-ID: <CAOdf3go4Km04_Tfw+C8ecVctKqe=Sm_W4nb9FU53v9+isicVQA@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_171617_900764_341FCCAF 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:12a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [champetier.etienne[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] ubus acls for params or hotplugd ?
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

Hi all,

Most OpenWrt daemon are still running as root today.
If we take the case of ntpd, to do its job it just need CAP_SYS_TIME
and to be able to deliver a hotplug event.
Right now hotplug-call is a simple shell loop executing all the
scripts in /etc/hotplug.d/$1/, so ntpd need to run as root.

I would like to have this hotplug call go over ubus, and I see 2 ways:
1) either extend ubus acl to validate params, then have a generic exec
functionality to basically have a sudo via ubus (really flexible but
not super clean)
2) or have a small hotplugd that publish one path per type (ie have
'hotplug.ntp' with an 'event' method)

Similarly to ntpd, udhcpc and odhcp6c don't require much capabilities
(at most CAP_NET_RAW, CAP_NET_BIND_SERVICE) if we send the dhcp events
as hotplug events over ubus.

As some of you might already have ideas on this topic, I'm sending
this email to get feedback how you would see this implemented (1, 2 or
...)

Thanks
Etienne

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A28916F145
	for <lists+openwrt-devel@lfdr.de>; Tue, 25 Feb 2020 22:41:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OG0G6UcwR9hXCQT8WzLib1xEHxjhPuqC9h1FZ97/nf4=; b=g/Wtzb0fRcq+M9
	4MC+IvHEe5fmJv05Uc0m10XuwGqwphwMwxgqLqgRxnHXV0TOIWpcaKva9RYeLVROwnR6aDIisjJ0Z
	Pkh0+qUQsvzeFUj/j49pizr4Y7vVoL7pCWrp1+VKhpukYDD79TIzydeZ7MVAqElrS67EPWYRq4Hgg
	X3l6YFietaSejg2Dg4KyrhODfyPs2uLZFQwp9MUT+5r60q+cdXBKTi3dRrSlOxVpg/lF022J5g6Xv
	4C3xP094NMBnu0B1+3oPVMn3/RQvZ/O78lC3lebCfxKjssMuHQnLClL8B7QDZnynJeqF9qMBMh/JE
	jGN3+qviWftcucsUC6OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6hxE-0005OZ-FV; Tue, 25 Feb 2020 21:41:24 +0000
Received: from mail-ot1-x335.google.com ([2607:f8b0:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6hx6-0005O6-0K
 for openwrt-devel@lists.openwrt.org; Tue, 25 Feb 2020 21:41:17 +0000
Received: by mail-ot1-x335.google.com with SMTP id g64so922308otb.13
 for <openwrt-devel@lists.openwrt.org>; Tue, 25 Feb 2020 13:41:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ed2YnDxkzQI7imBA2v/VixNhpu7RXHb5PzQyZFbelKc=;
 b=Wgyjq1cSCNWAxXTTGsdkeI30wArrF4HgIzW0MORmNVuQkatxpwPh0u0b1HMvW7K1tx
 ck60AfEcPp6vdjNVdBi0hIUYLgw7SCj5V/G/+Oyse4SZiK22aR6Qbelq1L26Usv5NFix
 0jCJItvFvhvtqmrfwlQzEwbPWhyA7CKp3KCSaSQvuoWTxMCpe4OL0SyRYW3utYZZaBc0
 AAHb1IhDS8LSuvORhJP8pkuXcdW6rcCSDDS215KGnRV15YrM9j7cK6196becQivlVbxw
 EFvjY5oY2xiZ4JpSIuBZFOo80fA2JO0ytRgfZpk8YLt9s7ssaA1xaAkl3NnEy93rETur
 AERA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ed2YnDxkzQI7imBA2v/VixNhpu7RXHb5PzQyZFbelKc=;
 b=qbjL/TUpWqOldVJvbE7i1BQiRJEaIY8KAozYY1c3ZiMbS/Vu8Gfn+6schzGlUczz5y
 pDtn6+ZhdruiToATwBp7+9E5TV0aplmCMJ6nZi3Xi9NujBaVfwgDILp1aVX0N9vX5N2X
 78HcpcuHYkj35GdusZxg5EdFWk8TO/0UTx3IbxAyu9L94aEwmytjJNj1bHiTF/dxr0/g
 92x6+ixB58TrCcA/4lurx7xTjLYT0u2tpMO7l8MMHEYbeKHW3RSnLnv4Cm8vHc4jpXR1
 iNf7vYqUD0oBi6sOJilOWmT0Ue/ZzTWF+z/ZscwmiH/CnHaeBeE84YJpMhGMRvp3UDyB
 6LCQ==
X-Gm-Message-State: APjAAAWGjsu/02cVSnmNKn/erXcd+OHs8JnuUchYjvGzKuzj5zo+ZQp0
 P5ACWcCjuOyHBJqWd0nfwEo4A5qKOq0YWJKPGA0=
X-Google-Smtp-Source: APXvYqx+6UE2zYSS3jsc7M6I36tJSwFoXuYvI1Bmsj2UTve3P2YxkBqhs40bA9fUnZSfSV48vlAdUZ2kEb2omId5w7k=
X-Received: by 2002:a9d:3bc4:: with SMTP id k62mr514803otc.186.1582666874800; 
 Tue, 25 Feb 2020 13:41:14 -0800 (PST)
MIME-Version: 1.0
References: <0a08710a-9438-cbc6-126f-7a8b278e75d0@gmail.com>
In-Reply-To: <0a08710a-9438-cbc6-126f-7a8b278e75d0@gmail.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Tue, 25 Feb 2020 13:41:03 -0800
Message-ID: <CAKxU2N_z0ORuS7T7UhB0zdNJdnQZVC5wDtONE5kaz4UvSMHBJw@mail.gmail.com>
To: e9hack <e9hack@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_134116_072509_2308D500 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:335 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Stubby is broken
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

On Tue, Feb 25, 2020 at 12:35 PM e9hack <e9hack@gmail.com> wrote:
>
> Hi,
>
> stubby is broken since this commit:
>
> commit  eaf522532324f9155d2d038e27006e5caaf9874a
> stubby: makefile and init script cleanup
>
> The necessary config file will be not create:
>
> /etc/rc.common: line 21: can't create : nonexistent directory
> mv: can't rename '/var/etc/stubby/stubby.yml.12277': No such file or directory
I don't see any of my init script changes breaking this.

Does this work?
--- a/net/stubby/files/stubby.init
+++ b/net/stubby/files/stubby.init
@@ -205,7 +205,7 @@ generate_config()
     }

     config_foreach handle_resolver resolver
-} > "$config_file"
+}

 start_service() {
     local config_file_tmp
@@ -223,7 +223,7 @@ start_service() {
         cp "$stubby_manual_config" "$stubby_config"
     else
         config_file_tmp="$stubby_config.$$"
-        generate_config "$config_file_tmp"
+        generate_config "$config_file_tmp" > "$config_file"
         mv "$config_file_tmp" "$stubby_config"
     fi
     chmod 0644 "$stubby_config"
>
> Regards,
> Hartmut

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

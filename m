Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3851ED904
	for <lists+openwrt-devel@lfdr.de>; Thu,  4 Jun 2020 01:22:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dsFBqlt9/jNTMKVxt84/7RNHsZw7bwtjid5FzkOXkBY=; b=naKYwSxSYpjoLY
	2fbr5pB7EaIiSBPL4z3V2O6t59+3filfdANulEfPQhx6ZNTJiQhs7R6dCt43DwHfVHjAjs7R3Yb4w
	1i1U5c+gF4nRMoRwxc9cODKvrgJZBWdeHEVR/4Bjy9F9wM+0gHIP/lDbOcXCrveZgA8jPFuWgziJL
	rLFA07y4zhUfenJN0+I50uBaOnSVxoReiQR/8Wx2+d2bGMB7cIbkqjmF5iXLkVKiJ823ROWJP0w3/
	pfMAc8My5Tie5NDLZJWnfXXDza6YleB8kwaUnR2VxWUq8gia5zuHqNpJVFeU+iiTu8UEVR6vJeQxe
	13MZzUaSJqHdJyEgz66w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgchv-0007aU-85; Wed, 03 Jun 2020 23:22:03 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgcho-0007Zg-0U
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jun 2020 23:21:57 +0000
Received: by mail-wm1-x342.google.com with SMTP id d128so3762893wmc.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 03 Jun 2020 16:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=melmac.net; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DVIu363UQCBX7/QoPwXwL2s7nAmNd1fsdbPWPgYg98k=;
 b=ZQa3AaMEQNIiBDJjNW2dDBfcvH5nwEZAcnPy9CJC6iTvsYFhJ1+4m/AW9vTTvMpZXO
 iVC9HCs+F2jw40W16Ye/Siz/x1w6259xSJnkqKSh5Ux6tkLT9a34dgnVf1hf+vNrQ0yN
 XqD6oq04aSLT/n5z5nIkBoo43BkzahsQWzShw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DVIu363UQCBX7/QoPwXwL2s7nAmNd1fsdbPWPgYg98k=;
 b=KzDTtkIBq8jiXeVScv36bj1kZPI7Tv78I0uMUb71lFsVxI5ufiF5MgXU4BCb4cdK02
 P6GwfSJuCDoZKLuhZ/7BeCUODpp3MABjILDwJdA4yQlEeUuLV+Wdy3NbMSk3+kBjL/jm
 uQ+YCYRMULHyRLgI8DF1/io1aLF0A6hWf+NpO7FSZYS6YsERYqwiJhnEsg2Hk23E/94W
 Eu2/SwFQ9JXabVGNvdvGy0h7VQPZYd6l6UI3BN3woshY9seBiCSLGf8gGh2bxlp1zMV1
 QVOPmAvIXFDhs+jWvTWfRlQS5a7fqiJ+NHfzkMjtmUIjAUSbUlA62WQjGlVs5m0oq8ZY
 /ZkA==
X-Gm-Message-State: AOAM5337uo+rEXlaR6TehkfWjStVqdU5T/x+wKaDpnx/2gdSiTzJLNX1
 m5zb90QsVSNAytgKDN01kDMGp7MQGkF1IQXoX4r010CCV40/hu3P
X-Google-Smtp-Source: ABdhPJwyX5UHsNcOwZ9lL1BOxAk+BtdIuwJ9MPMlDlEEL4RxwsHtj8qrN82F4AYZTugeOH0QWTRU+mkwk/3xH747UFY=
X-Received: by 2002:a7b:ce01:: with SMTP id m1mr1295435wmc.116.1591226513370; 
 Wed, 03 Jun 2020 16:21:53 -0700 (PDT)
MIME-Version: 1.0
References: <CALu2O0Rzyg+Kv7h=tX7Gg9s9shPAUtb46oLsYpD61OYZ=VYsLg@mail.gmail.com>
 <CAJQUmm7Pf2e+P+KLVPQsL2pU=WC6b2z734e0LObjaGeFviKAkw@mail.gmail.com>
In-Reply-To: <CAJQUmm7Pf2e+P+KLVPQsL2pU=WC6b2z734e0LObjaGeFviKAkw@mail.gmail.com>
From: Stan Grishin <stangri@melmac.net>
Date: Wed, 3 Jun 2020 16:21:42 -0700
Message-ID: <CALu2O0TWrDkEZUXmrq2U16Ej6m-Rwhhwdr-eW5FjuitUu-FCag@mail.gmail.com>
To: Michael Jones <mike@meshplusplus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_162156_065863_06927F71 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] base-files: add list-enabled/disabled
 to service function in /etc/profile
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

To obtain the list of enabled (for autostart) services, you'd type
service list-enabled. For disabled services service list-disabled. It
is useful when you need to quickly check which services are
enabled/disabled or when helping other users troubleshoot.

An alternative to list-enabled/list-disabled that I have considered
was to output the enabled status of available services below the usage
output, ie replace:
                if [ -n "$1" ]; then
                        echo "service "'"'"$1"'"'" not found, the
following services are available:"
                    ls "/etc/init.d"
                fi

with

                if [ -n "$1" ]; then
                        echo "service "'"'"$1"'"'" not found, the
following services are available:"
                    for F in /etc/init.d/* ; do
                        $F enabled && echo "$F (autostart enabled)" ||
echo "$F (autostart **disabled**)"
                    done;
                fi


Please elaborate on the list-start and list-stop question, I'm not
sure I understand the purpose of those.


On Wed, Jun 3, 2020 at 11:34 AM Michael Jones <mike@meshplusplus.com> wrote:
>
>
>
> On Wed, Jun 3, 2020 at 6:42 AM Stan Grishin <stangri@melmac.net> wrote:
>>
>> Implement service list-enabled and service list-disabled to provide an easy way
>> for users to list enabled/disabled services from CLI.
>>
>> Signed-off-by: Stan Grishin <stangri@melmac.net>
>> ---
>>  package/base-files/files/etc/profile | 21 +++++++++++++++++++++
>>  1 file changed, 21 insertions(+)
>>
>> diff --git a/package/base-files/files/etc/profile
>> b/package/base-files/files/etc/profile
>> index 0beff1608f..e8350cfd6a 100644
>> --- a/package/base-files/files/etc/profile
>> +++ b/package/base-files/files/etc/profile
>> @@ -38,3 +38,24 @@ in order to prevent unauthorized SSH logins.
>>  --------------------------------------------------
>>  EOF
>>  fi
>> +
>> +service() {
>> +        if [ "$1" = "list-enabled" ]; then
>> +                for F in /etc/init.d/* ; do
>> +                        $F enabled && echo "$F enabled"
>> +                done;
>> +        elif [ "$1" = "list-disabled" ]; then
>> +                for F in /etc/init.d/* ; do
>> +                        $F enabled || echo "$F disabled"
>> +                done;
>> +        elif [ -f "/etc/init.d/$1" ]; then
>> +                /etc/init.d/$@
>> +        else
>> +                echo "Usage: service
>> list-disabled|list-enabled|<service> [command]"
>> +                if [ -n "$1" ]; then
>> +                        echo "service "'"'"$1"'"'" not found, the
>> following services are available:"
>> +                        ls "/etc/init.d"
>> +                fi
>> +                return 1
>> +        fi
>> +}
>> --
>> 2.25.1
>>
>
> Could you provide examples of how this would be used?
>
> What about "list-start" and "list-stop" as well?

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

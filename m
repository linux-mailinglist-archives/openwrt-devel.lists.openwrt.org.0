Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A61178B23
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Mar 2020 08:12:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hy/uqFJwUB4UglUjRBIkQ3Ed8a1wCV/h3WZv8X5rdYg=; b=OuEG6GsezB2wiq
	vI8V6NBPaVyvdR9lKA8VhJiSsTcFRpwvp97Ui/yvhzuCMcgwUViyXiqQ8pLGqV60PPX088D887znz
	SDW3xohMy0qxDQnsKpeD5oMQCzHbwU5SAH/1DLXA0LZ/v//kokX/Q05K9V0DoZYdS5qvcpB4UCGtj
	QPmKLloAixHzar5e02L2FbQZjXiHzw1zHJiRTU08v0MCttWuQIFTfMEreSIR4nVlK+n54/fQgDEGa
	kasUTGIKWm5wZuj1m21dx/Ii3dlxURgQYocZ9Az4T8pQqUZ9T6vKq84Iu8c/rY18+Pe2tejOKloo3
	aAWijys67cTQjYoTkzZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9OCo-0001Th-WA; Wed, 04 Mar 2020 07:12:35 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9OCh-0001TO-Ry
 for openwrt-devel@lists.openwrt.org; Wed, 04 Mar 2020 07:12:29 +0000
Received: by mail-ot1-x334.google.com with SMTP id f21so1002541otp.12
 for <openwrt-devel@lists.openwrt.org>; Tue, 03 Mar 2020 23:12:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+Apos6ZqvaLu/T+GTd0tk2t5XRzI1Ack/Z/mdgm8gHo=;
 b=WvFyL93/oTx6lGnyGGZnEWLEJrFGp6VfWayGNQnrVUPzTysQqC17m+358oXHJrQuzN
 UapgPrbhULU+6GqzR7ebJbIPpWoZoS2gUqEJqK7KTxACKm+FF+97XGRcvPHGyYGTnhws
 qcSudwSZQ/YF2erASvJ64NCoc06kd0uR/tXxkp6E+NKBt/n0AuGHx2day+EVnLRPnmAj
 nNbvQuut9u3oxvusYj2zsPWt+H3H25CN87ImiTsBDSNY/BwLZ+mu8RTGjr2i4wlNoJ2A
 wXUExerBQ/PAhHnBrdsdM0q5fLMPfKRgh84TahMjGsgmQ5XtPnEJf3Xo2HoCFZH5keEf
 q3Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+Apos6ZqvaLu/T+GTd0tk2t5XRzI1Ack/Z/mdgm8gHo=;
 b=T/mQpy0ykKUrF9ZwHQbEcIW3SGVIIpqQB9kPvqzKfYqK0k6GSK4am4TJJyRp3YoyIx
 veJ4a5UG2/A2NX4v8eG8gNLKRxSfBXlbB4FjybpReNmO+tAEl5QhVRkxhPVVy8nZHk0N
 /Avk9Lv2zr/DFSfExzT+PImdEVBKI12VVrFM1No1Vz2dcg9/vmx3mulT8UA2TcKAxA5Z
 uojXcOjjyZI3KVP+J3BiRKUvNE//wji9004JIIPf/kdAhPzKaIOodQojcZRPGMIFhG4I
 mLPCYGWKC6yIgCXWDCvxKOEXZVe9ujL+JPq3vMMtMlpBXs0mEtNw5Qj07eQLlaQRQhUJ
 X1pg==
X-Gm-Message-State: ANhLgQ3KzdpJHf3xwapnWu1OgE2xXU65kWeBhJouRSANlNWA61OuwZRh
 N/Sc+jkPJAHjNLBd2/2jg/dpYtIEI5e9z4NAW+E=
X-Google-Smtp-Source: ADFU+vv8XIXLXSd3ZXekV+V+YShdGghiHHCJUoxAPc8d0rhpGvEflvw5vyAp+yTIq+c6xt2AwJmTfHRIj8VDjLv/3pw=
X-Received: by 2002:a9d:5d09:: with SMTP id b9mr1262990oti.207.1583305946066; 
 Tue, 03 Mar 2020 23:12:26 -0800 (PST)
MIME-Version: 1.0
References: <CAEKKVUiCnieCu7HfgK7=yxSOomnV1H14em4zhmhhQeHCMLw-mg@mail.gmail.com>
In-Reply-To: <CAEKKVUiCnieCu7HfgK7=yxSOomnV1H14em4zhmhhQeHCMLw-mg@mail.gmail.com>
From: Alexandru Ardelean <ardeleanalex@gmail.com>
Date: Wed, 4 Mar 2020 09:15:19 +0200
Message-ID: <CA+U=DsrxiFM=FZ5e0F31hMsV_uV4BT7pMtmCN_s2re_LQ6VdOw@mail.gmail.com>
To: Kevin Mahoney <kevin.mahoney@zenotec.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_231227_930588_CB15A973 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:334 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ardeleanalex[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] Open vSwitch integration with netifd
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

Hey,

The idea isn't really new, and it's been done before, but did not make
it upstream.
See here:
https://openwrt-devel.openwrt.narkive.com/iX384VOa/rfc-rft-netifd-initial-openvswitch-support

Essentially, the OVS integration is a clone of netifd's bridge integration.
The implementation has some popen() calls to OVS utils, because that
was easier to do really quick.
Ideally, you would use libovs to talk to the OVS daemon that doing
popen(), which [I suspect] was one reason for the patch to not be
acceptable.

There was a discussion [internally] about whether OVS would be better
suited as netifd proto-handler vs as a system-ovs.c file.
Proto-handlers can be done in shell completely and are fine to call
other processes.
Also, proto-handlers can be installed when the OVS package gets
installed, so the proto-handler files would sit here:
https://github.com/openwrt/packages/tree/master/net/openvswitch/files
I don't remember a conclusion about it, or whether that could be done
[as a proto-handler].
I think the system-ovs.c approach was chosen to better integrate with
netifd's event handler for bridges [or similar to bridges].
I don't think we dug too deep to compare the 2 approaches.
But I guess the implementation [as done in that patch] should still
work to some degree.
I don't remember what bugs were fixed with it [or which bugs].
Since it wasn't upstreamed, everything was done in an internal repo.

Funny story. Patch [1] was created to accommodate the size reduction for OVS.
[1] https://mail.openvswitch.org/pipermail/ovs-dev/2013-December/278590.html
Before that patch, OVS would link statically libovs into all it's utils.

Not sure how much this helps you.
The current maintainer of the OVS package may have more [recent] ideas/thoughts.

Some personal conclusions:
Depending on what you want to do with OVS, OVS can be useful or not.
We used it more like a replacement for kernel bridges [because in
theory OVS would scale better],
and since we used netifd + uci to configure it, it sometimes made
things more complicated.
The reason is: OVS has it's own control/controller logic; and we never
used it back then.

We wanted to use it implement L2 switches; some things were done via
OVS, STP/RSTP via mstpd, LLDP via lldpd.
And for that, OVS [being used mostly as a replacement for Linux
bridges] took quite a bit more RAM than I would have liked.
100+ bridges would fill up 128 MB or RAM [for example];
But, at the time, it did fit into 8 MB of flash [some basic OpenWrt +
some userland + OVS]. You may need more now.

On Tue, Mar 3, 2020 at 5:12 PM Kevin Mahoney <kevin.mahoney@zenotec.net> wrote:
>
> I am exploring the idea of extending netifd to support Open vSwitch. I'm curious if anyone has thought of doing this, or has looked into what all it would take to do so. From my limited research, it seems that only a new system-xxxx.c would need to be added to netifd while keeping the rest of the logic the same. Please share your thoughts.
>
> Regards,
>
> Kevin Mahoney
>
> ZenoTec LLC
> 720-864-4320
> kevin.mahoney@zenotec.net
> www.zenotec.net
>
> This e-mail and any attachments are intended solely for the use of the intended recipient(s) and may contain legally privileged, proprietary and/or confidential information. Any use, disclosure, dissemination, distribution or copying of this e-mail and any attachments for any purposes that have not been specifically authorized by the sender is strictly prohibited. If you are not the intended recipient, please immediately notify the sender by reply e-mail and permanently delete all copies and attachments.
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

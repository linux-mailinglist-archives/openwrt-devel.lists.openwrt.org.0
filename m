Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D386F9D64B
	for <lists+openwrt-devel@lfdr.de>; Mon, 26 Aug 2019 21:14:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:In-Reply-To:References:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AeSHh8vmDIhuX/gZaV4+y8eVJLXPM6VKW1qfvdolBrI=; b=SliQ33/Uu6oqiFI3v+RhL7qU1
	uYnDLBeegcouLzG+qsHNywjM5Pf6fe8kxKkgVaQbjICxA16xxK1xGxenCy1IgaUbcFdwwJNPr+PaS
	P+6TA8vfyfRZAAdSU8k7+B6tJGj931TrYyL/QBI/M7Jhgg7z9jmUfO6zgBrAxgINcEO+9ZB8TBClw
	04/T5ni766oLy+oSmfZrQSaYVtdvFvJ4GPol/6mJzmViMeeb+OX6CRgoAESWaI1gQzxPjOL4Q52Uy
	+xCTQojyVDTCFUpKCXPwLAZDd/m8t8djUUuBT3rsmCQzbIF1wjsCXF4az6NJgVPeJdryGDAvJjoYF
	D9XTpGWfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2KRA-0004At-JM; Mon, 26 Aug 2019 19:13:56 +0000
References: <20190704113537.22078-1-ms@dev.tdt.de>
 <4454fadb211809fbcceab6dc465a1b7a@dev.tdt.de>
In-Reply-To: <4454fadb211809fbcceab6dc465a1b7a@dev.tdt.de>
Date: Mon, 26 Aug 2019 22:12:58 +0300
To: openwrt-devel <openwrt-devel@lists.openwrt.org>
MIME-Version: 1.0
Message-ID: <mailman.19959.1566846805.19300.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Sami Olmari via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Sami Olmari <sami@olmari.fi>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [PATCH uqmi] nas: add --get-plmn
Content-Type: multipart/mixed; boundary="===============8592772112712047552=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8592772112712047552==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============8592772112712047552==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
	by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
	id 1i2KQc-0003u5-Aq
	for openwrt-devel@lists.openwrt.org; Mon, 26 Aug 2019 19:13:24 +0000
Received: by mail-lf1-x144.google.com with SMTP id v16so13106957lfg.11
        for <openwrt-devel@lists.openwrt.org>; Mon, 26 Aug 2019 12:13:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=olmari.fi; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=dTb6adBMV4NZA6rIAfqky+D6Y55Uu1jaMcgAGO/r/XM=;
        b=V2z/zZfOWJm+Iv5Yn5dq7st7lQeiGQrFvZKptzqg3xTEMCX+ApDUcWizwKFsdIep13
         MEpowLR0EBhK3Ig6Kq2MUUc8FxbSANS8Y5GpmQOsKG08xUtNBAKCvQITJctdbWzgIB9f
         4uGVu4wJpxUWcy3kVvrKtfnDvk5Ph6HMK+rPGJKoAQsrY2aqrrWKV1TmIFFgATUY8wg/
         ZFsKzI5xsef2KXDqWfq/7neRNcKcu5BOmYpWUgtDQKO0ppw6SX/vdbPiLPstzjrLMhNB
         7KnuPGKvvtS8uUijRNNI70QwJuqgbVr2l4sIaXkow/b8eMpaFLj61GDSPBW1ds9sI0PT
         XMxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=dTb6adBMV4NZA6rIAfqky+D6Y55Uu1jaMcgAGO/r/XM=;
        b=ZeSkzmRv87mFGu4nnYJ9V6K7d5+zUE843a9ozGkvevNNA1LLFBpF7U+1ffJcAi5jO9
         0UWOy30afGOEMvoWqHiqdeC46y6Aa7kKbrxceWLhEsxTTf6vxCLvlrtap7fx4qIs8M0w
         xfJTm3qm2D6/45ME1/6C1cQpN/4+bT9+YKFHiPS/fjuYoyApRrqgzKtsvMwGyis1KT8L
         4HueiEbcFzjQQJvwX0Pn9cpGa3tEApL7KR0Ol244PTbndzM2HWVVxIAKD5CVuDvv5k2J
         GJ2mBT/YYOsZ6QBFmjrToIYhfiuRQILROatl3T6JJV9iVc+Bt4V3REPE7H+XhhXASZTt
         zSMg==
X-Gm-Message-State: APjAAAX0ItecMNKWdaftacQbUmiZFQA/69Hzt46h+p0bQv/Frsr2IfLe
	r4gsazo9srlt5z99E8E0pBtaS6w1wGt3P3hQPxW57x8qA5CGeA==
X-Google-Smtp-Source: APXvYqyi5Q+aglnvDgU6DKxRRwRQ6MljSsdJ3exscwdqz7LzGBl3F2kI/YI6z22mcFPX0oxm1Ya+1rVW9jHmIQh3fTM=
X-Received: by 2002:a19:4347:: with SMTP id m7mr5079703lfj.146.1566846789027;
 Mon, 26 Aug 2019 12:13:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190704113537.22078-1-ms@dev.tdt.de> <4454fadb211809fbcceab6dc465a1b7a@dev.tdt.de>
In-Reply-To: <4454fadb211809fbcceab6dc465a1b7a@dev.tdt.de>
From: Sami Olmari <sami@olmari.fi>
Date: Mon, 26 Aug 2019 22:12:58 +0300
Message-ID: <CAENOc+xxGFFSh+K-EC1o5Kog8LsPJDGiHG26b0d-YC0ed079XQ@mail.gmail.com>
Subject: Re: [OpenWrt-Devel] [PATCH uqmi] nas: add --get-plmn
To: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_121322_865148_10572085 
X-CRM114-Status: GOOD (  17.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [2a00:1450:4864:20:0:0:0:144 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain

I think the ideology behind proto handler there is to "do whatever
told" despite of what the state is currently,
maybe there is a reason for such behaviour (searches some stuff from
network etc).

-- 
 Sami Olmari

On Mon, Aug 26, 2019 at 1:48 PM Martin Schiller <ms@dev.tdt.de> wrote:
>
> Can somebody please take a look at this patch.
>
> It's really necessary to fix the problem in the qmi proto handler.
>
> Thanks,
> Martin
>
> On 2019-07-04 13:35, Martin Schiller wrote:
> > This command is needed in the qmi proto handler to check if the plmn
> > is already set to 'auto'.
> >
> > The reason for this is, that setting the plmn to 'auto' will implicitly
> > lead to a (delayed) network re-registration, which could further lead
> > to some timing related issues in the qmi proto handler.
> >
> > Signed-off-by: Martin Schiller <ms@dev.tdt.de>
> > ---
> >  commands-nas.c | 31 +++++++++++++++++++++++++++++++
> >  commands-nas.h |  2 ++
> >  2 files changed, 33 insertions(+)
> >
> > diff --git a/commands-nas.c b/commands-nas.c
> > index 5874bfb..1f7445d 100644
> > --- a/commands-nas.c
> > +++ b/commands-nas.c
> > @@ -293,6 +293,37 @@ cmd_nas_get_serving_system_prepare(struct qmi_dev
> > *qmi, struct qmi_request *req,
> >  }
> >
> >  static void
> > +cmd_nas_get_plmn_cb(struct qmi_dev *qmi, struct qmi_request *req,
> > struct qmi_msg *msg)
> > +{
> > +     struct qmi_nas_get_system_selection_preference_response res;
> > +     static const char *modes[] = {
> > +             [QMI_NAS_NETWORK_SELECTION_PREFERENCE_AUTOMATIC] = "automatic",
> > +             [QMI_NAS_NETWORK_SELECTION_PREFERENCE_MANUAL] = "manual",
> > +     };
> > +     void *c;
> > +
> > +     qmi_parse_nas_get_system_selection_preference_response(msg, &res);
> > +
> > +     c = blobmsg_open_table(&status, NULL);
> > +     if (res.set.network_selection_preference) {
> > +             blobmsg_add_string(&status, "mode",
> > modes[res.data.network_selection_preference]);
> > +     }
> > +     if (res.set.manual_network_selection) {
> > +             blobmsg_add_u32(&status, "mcc",
> > res.data.manual_network_selection.mcc);
> > +             blobmsg_add_u32(&status, "mnc",
> > res.data.manual_network_selection.mnc);
> > +     }
> > +
> > +     blobmsg_close_table(&status, c);
> > +}
> > +
> > +static enum qmi_cmd_result
> > +cmd_nas_get_plmn_prepare(struct qmi_dev *qmi, struct qmi_request
> > *req, struct qmi_msg *msg, char *arg)
> > +{
> > +     qmi_set_nas_get_system_selection_preference_request(msg);
> > +     return QMI_CMD_REQUEST;
> > +}
> > +
> > +static void
> >  cmd_nas_network_scan_cb(struct qmi_dev *qmi, struct qmi_request *req,
> > struct qmi_msg *msg)
> >  {
> >       static struct qmi_nas_network_scan_response res;
> > diff --git a/commands-nas.h b/commands-nas.h
> > index 9ebfa00..4b175f9 100644
> > --- a/commands-nas.h
> > +++ b/commands-nas.h
> > @@ -24,6 +24,7 @@
> >       __uqmi_command(nas_set_network_modes, set-network-modes, required,
> > CMD_TYPE_OPTION), \
> >       __uqmi_command(nas_initiate_network_register, network-register, no,
> > QMI_SERVICE_NAS), \
> >       __uqmi_command(nas_set_plmn, set-plmn, no, QMI_SERVICE_NAS), \
> > +     __uqmi_command(nas_get_plmn, get-plmn, no, QMI_SERVICE_NAS), \
> >       __uqmi_command(nas_set_mcc, mcc, required, CMD_TYPE_OPTION), \
> >       __uqmi_command(nas_set_mnc, mnc, required, CMD_TYPE_OPTION), \
> >       __uqmi_command(nas_network_scan, network-scan, no, QMI_SERVICE_NAS),
> > \
> > @@ -44,6 +45,7 @@
> >               "  --set-plmn:                       Register at specified
> > network\n" \
> >               "    --mcc <mcc>:                    Mobile Country Code (0 -
> > auto)\n" \
> >               "    --mnc <mnc>:                    Mobile Network Code\n" \
> > +             "  --get-plmn:                       Get preferred network
> > selection info\n" \
> >               "  --get-signal-info:                Get signal strength info\n" \
> >               "  --get-serving-system:             Get serving system info\n" \
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


--===============8592772112712047552==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8592772112712047552==--

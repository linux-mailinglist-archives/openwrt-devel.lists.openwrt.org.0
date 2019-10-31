Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA30CEB1BB
	for <lists+openwrt-devel@lfdr.de>; Thu, 31 Oct 2019 14:58:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nEJkWRC2sFOlR9CPmoVDUX/JUfYwiL5jQG862Ckqwvk=; b=jdsIrRETCAP6xH7uFzIFYrLcXj
	LiTRd5EGUgcK+S6pIyUR1YdeyOiTtElabCF5/MedCqT0wSg8Vd2zrJLlav5z6Ji/rvIRxsSVLm0QM
	CkOkAIrNuAJp3MxGOEx0Oy0blrDK4Oy/6qTGwyThO4JfEKGZS8egTjbGTb+5GBYdRfNCVuhTi3nzE
	0HzyWeFYmTol6vkf1WNI6gq2SYbJ4qPXTO9OczjL1H6j+qOZA3tp3vnqHwOK6Qz6iMv7vjYRluZBS
	kdZWeVoUaYCPMMU0X5kWnqlaaJt6ciOlIxzPFAOuvoVFJFjwpV3OxhwQIAO5jGxPwc53iOWkgN6b+
	+NW9Nj7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQAyB-0005qI-PC; Thu, 31 Oct 2019 13:58:35 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQAy4-0005pi-RU
 for openwrt-devel@lists.openwrt.org; Thu, 31 Oct 2019 13:58:30 +0000
Received: by mail-io1-xd41.google.com with SMTP id c6so6775590ioo.13
 for <openwrt-devel@lists.openwrt.org>; Thu, 31 Oct 2019 06:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=swlVy/cagugYMRqZVVRIpNknbjHbp/0l9aaQXAxiYZ8=;
 b=ikyiv+hTnDsZsTCc1rSQajpiXHNLVvgNl59b7id2Az5XecOv4GKcsdsrlEeFQ100By
 ExGEPvBrcTkK4zA0ZdzCry4Drt0DkwVWbKkxvv07NxyPuAgMXIuN+zMTvf01pi1qNTjZ
 T4Re70wx6Wk+5YAQEBHPEGttYFI5VaPW407B7niUF/dXfnzgieT0iklIXKvJTinwOyOf
 Z2IkfAWa+lOVQqotqPgWtGGOKe4/7l02rLO7MfXOyTxFrRrHw+8Ele16fowZL4smg0Ak
 dcUuak21Os4C7LCTHRDDlTencPM/uAW+wAI650+njpHAXzUhPkIcaFhdKoPekJsvlg2+
 3X/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=swlVy/cagugYMRqZVVRIpNknbjHbp/0l9aaQXAxiYZ8=;
 b=sKu2S+M0epeWzSkgbkBCmzbUBdsBS4tLdnkaBHwynbsbABkwh7IoR5LF7KzNr24EC9
 cYycKqtpjXtSq68VfkhHV6hgbBaI+QEIvg0D2SUnT88AIKYiWMpCP4nHzErRKEXwQYAw
 IXk/cpDMNtlaQcmCD6XQT4SDPRts9+rLbYXFZBO4i43xiRIBYX6YIaEMBoIZF1kgJiJV
 JqpGmjKvAJJ84Yu9IY9AJS0DRCHQ+rNPue5DdiDX9/MD2dl3xf0rSzwGH2BtCqIBHvD9
 Kc+U13ZeIIrDEPZY2Ln6H/wXKK9wOqQHMTCXsVjGKSAWApx5axTYik8qIk66DKHFBnkI
 9cGg==
X-Gm-Message-State: APjAAAVbUAe8clnWtZ9Nfs3AD6e0x7EDEXA0bS59jTjaBWN4JD6rrXJG
 UygXVHNBcVoD9g4lAt6Z+wJJqPN2giW6GEF+Xzu2jg==
X-Google-Smtp-Source: APXvYqy0/gDl00dXD9hAighDO0sw2NLPgTdAaYzq7oMpv4O4fOSToCySbm+Z9bBrLwMcc6GAGGiY0IlpIxVPARi2Ytw=
X-Received: by 2002:a02:cac5:: with SMTP id f5mr619025jap.113.1572530307391;
 Thu, 31 Oct 2019 06:58:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190828173754.31387-1-kristian.evensen@gmail.com>
In-Reply-To: <20190828173754.31387-1-kristian.evensen@gmail.com>
From: Kristian Evensen <kristian.evensen@gmail.com>
Date: Thu, 31 Oct 2019 14:58:16 +0100
Message-ID: <CAKfDRXgHjS2QD6kBDOn9qRWrXn9sq6JC7HTCFN0PdnVBU3uWzQ@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_065828_889907_180ECFAD 
X-CRM114-Status: GOOD (  19.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [RFC] firewall3: zones: Use ipsets instead of
 interfaces in zone rules
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

On Wed, Aug 28, 2019 at 7:37 PM Kristian Evensen
<kristian.evensen@gmail.com> wrote:
>
> firewall3 currently creates one rule for each interface that is a member of a
> zone. On for example devices with multiple interfaces, the current firewall3
> behavior quickly leads to a lot of rules. In order to reduce the number of
> rules, this patch replaces the per-interface rules with ipset matches (if ipset
> is available). Since 2011, ipset has supported the set type "hash:net,iface".
> By adding (and matching on) on pairs consiting of the v4/v6 any-address and an
> interface name, we get the same behavior as the current interface-rules.
>
> After applying this patch (and assuming ipset is available), the following
> actions are performed when a zone is created:
>
> * We creates (allocate) an ipset of type "hash:net,iface" for each zone. The
> name follows the following format: zone_<zone name>_<4/6>_set.
> * If creating a set fails, then we ignore the zone. This is something we can
> change, but my reason for this behavior is to have consistent firewall rules.
> I.e., zone-rules either match on ipset or interface names, and not a mix.
> * Each set is populated with pairs consisting of the IPv4/IPv6 any-address and
> an interface name, for example "0.0.0.0/0, eth0.2".
> * Instead of one rule per device, a single rule is created matching on the
> ipset.
> * The check used to select the OUTPUT/PREROUTING-chain when adding rules to the
> raw-table has been moved to print_interface_rules_{default,set}. The motivation
> behind this move was to avoid changing print_interface_rule() too much. As far
> as I can see (and have tested), the logic for selecting chain/creating the
> rules is the same as before.
>
> Because the change introduced by this patch is quite intrusive and I am sure
> there will be comments/disagreements/suggestions, I have sent this patch as an
> RFC. One thing that I am aware of and will fix before the final submission, is
> to add support for printing ipsets. Right now "fw3 print" prints per-interface
> rules.

I have had the chance to run this patch in production for a while, and
thought I should share my experiences. All in all, switching to ipsets
seems to work well and, with one exception, I have not found any
configurations or configuration steps that break. Also, in some of my
setups, the number of iptables rules are greatly reduced. While I
haven't measured any performance improvements, fewer rules makes the
rule set easier to work with. The need to reload the firewall on ifup
is also removed (it is sufficient to update the set), which removes an
annoying gap or interruption in traffic on some of the devices I am
running.

What (currently) breaks is wildcard interface names, ipset currently
has no wildcard-support. I have submitted a patch upstream adding
support for wildcard naming, and have received positive feedback but
no final decision.

BR,
Kristian

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

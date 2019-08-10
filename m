Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0472E88C51
	for <lists+openwrt-devel@lfdr.de>; Sat, 10 Aug 2019 18:41:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zoshATRhTMH8yTBXJOhtrkEHZYkOCpFR5tNegguNh/c=; b=NCA+u4ruMAN2GR
	zmLgfxpo4Eg64uhIBPFVeFAJiONq8CM85TYD+1HBMCOFtUFuxZJz5u7lxGwR+TVZSM+mscPq24dIQ
	+FFja0HWyDrwk+AkAKEENVQwIZomabK5+uzBoGD64hWfE/+dTvQgDbhHYQqGh9rd45PaQZ18nqwhk
	wutdKt2QghE50EFPeWhT5wrt+tIMVIfb/TBBIP6kd3ItXMCeiUj+JoxCsWQXE/owZYSfwMQHdGLeS
	Ta2fQ66GUbZLfs2ELiQ0N8phNXh52/6oaw5CzmGojGhjfGoU2uOzsetZY7dCEZVpsTevrYj7pFjzf
	aR2o37tpKzN2uYH+DILQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwUR8-0007ev-VB; Sat, 10 Aug 2019 16:41:47 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwUQx-0007eR-NL
 for openwrt-devel@lists.openwrt.org; Sat, 10 Aug 2019 16:41:36 +0000
Received: by mail-ot1-x342.google.com with SMTP id c34so4525240otb.7
 for <openwrt-devel@lists.openwrt.org>; Sat, 10 Aug 2019 09:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dAgx3QsV+zLM0FNa8/iz9/OZAjD26j1fmSHKEO/7e4k=;
 b=u/3vuSaVkCxc3J4r504AkuUd96eVf8NcjoHs3Cf8/TIuMX9DBluhnQBgXLI9uqnkMT
 GAHWddnqb0MJVsS3ujlZtFdag/n6Oz8iv3CKRWAn0htmRU5yOurVUjJX4hc6k5CEZTeM
 raofM0wtpb9CFVlxiVoWkDIpHgIfbaQKLfPYRCmUlimLc8iZz9MthqM/4mCjS2qUyIEl
 zkqUHS6LsxAkje49cXfP/eSy4ucK3rgK1NFSDf7HGE9iT3ctHC211a00Iq1ca6/A4/BS
 OD8LmZMDieBzdnkpBsRvTCiujtxhVuNxHbR1YNZpRoR048rHJPbLOj0cfX5S/qopDhq4
 iQqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dAgx3QsV+zLM0FNa8/iz9/OZAjD26j1fmSHKEO/7e4k=;
 b=pI+Z5utyD7irEclx/le1XdoQxtPuH1ZS/xQpFBycs/lWH7tt9I8uEF0Qfm7GWzVJ9R
 k+BraTUBA/RF8WCoDFq5bnYGTeEW+HncMBjVCEiNljr+KNiAIW3bM8Wekos8kMIxkV9E
 W+OAGhzziv5qRy7d6gNM2GivaGxc2n2yXRyKkExmzk00cAAH4LHnmY9rJE48C5HVLPW4
 yuB6imruyCNOK1btm0btA2nzUPVfkcFfA4LAR9u/KDSu1zC2+Gq6YvDe0nybZ2/ZIB35
 ViMf8sl1gu0ef+bRkWt7OU1ZlYtqxvKaT8hC90h6AbuaEd9ftLa2BkOjMmThSPHwqsfi
 oD8A==
X-Gm-Message-State: APjAAAU3ZLqcNiXsc5c8devgmDqThihJNsbQbRJ+qbHuqN6aPIGOu7Y0
 chpLSkm1gRVDEIlrD2rKgylYGWl8Sf46YoJi/04=
X-Google-Smtp-Source: APXvYqwptbRW2fyIf/KfTOhRmV6sS55c1ZNBb73qSJwv/i4KdMocLKhbah+X1pYHMzd8MWEojEZoTG2W+wDlemCREfc=
X-Received: by 2002:a6b:c081:: with SMTP id
 q123mr26377137iof.210.1565455294547; 
 Sat, 10 Aug 2019 09:41:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190802144610.1229-1-freifunk@adrianschmutzler.de>
 <CANoib0Gt1WUtGGXaXp=iFu5ejPA1GkhevcquxFGVEHohJrwR4A@mail.gmail.com>
 <022601d54b95$30fec170$92fc4450$@adrianschmutzler.de>
 <CANoib0EKqHH5Xx6Gx5uUozvt3zNvuU6UvqLiE8Eaqjn1DtDQHQ@mail.gmail.com>
 <027101d54ba8$373cfb70$a5b6f250$@adrianschmutzler.de>
 <CANoib0H=v=H8wywMgEtoEZaVLOMQ9JKNfs3FWtWt996kiCxiiA@mail.gmail.com>
 <CANoib0FY9U+LhW4UE9effHuJJabX9QFnmHD0Vj6e_gdCEmzE-A@mail.gmail.com>
 <00b601d54f88$e50b7ea0$af227be0$@adrianschmutzler.de>
 <CANoib0FyuspUDhriPmy1U1=G73=Qtyauti6HkEN_JztEpCjjmQ@mail.gmail.com>
In-Reply-To: <CANoib0FyuspUDhriPmy1U1=G73=Qtyauti6HkEN_JztEpCjjmQ@mail.gmail.com>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Sat, 10 Aug 2019 19:41:23 +0300
Message-ID: <CANoib0FL17BhwWcQrZuNSK9Sy+iE0+MByxo=1uVoMmAcXozTaw@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_094135_786603_72745F19 
X-CRM114-Status: UNSURE (   3.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: convert devices to
 interrupt-driven gpio-keys
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

If you will be pushing it some way, remove debounce-interval too.
Without it gpio-keys work better.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

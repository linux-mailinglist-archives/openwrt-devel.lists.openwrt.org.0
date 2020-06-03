Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2221ED5E7
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jun 2020 20:11:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cM2A6eDMWB+nvxX2zlr+gnr3v7e1pFeIB+Gy9sSh7E0=; b=sV3KamczeIKnzj7AI5at++bZg
	UU7dfWUEMYDv8qTHdY7tU+QMoolGL9dMgLtoUu0pXJ8JAgki32BVfSQxfiyms/45hJ3hJWybgHMyq
	sjjQR0yaO85XyUbO+1bPo9gbtYNkMxbxeTy8h/ua63BDMdlmqM/0odM7/uaQE7kX1VGAP54ObtQ4v
	vuG9F/TEoNryRJSpqILLWVp1wkwD1imrI33O3Fa55Pt1OgwkoEEIxGEJAR7gtq3+OteHjM4G9e8hx
	LD7Z9JL9Aux5w1xSPEo0kkG4ULJvlEs6Uqb5/V1FBKnAP91AYMySFgt66k4QcHqfkVRP9Nq4bcjUv
	EvPWRIQDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgXrk-00065r-Mh; Wed, 03 Jun 2020 18:11:52 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgXin-0002u7-D6
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jun 2020 18:02:56 +0000
Received: by mail-lf1-x12c.google.com with SMTP id d7so1886743lfi.12
 for <openwrt-devel@lists.openwrt.org>; Wed, 03 Jun 2020 11:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=N1E5aHV5MgQzZIYPAIiQS06Rh3TPMQ4N9hoXnxv5KG4=;
 b=g3yqAtunQA9TUbPwD5PrXXAx+6fH9M6NrE7Ipip0Wey5mzPc1pFoxkvtqSARD+ftOP
 PS8G/d1iNMtsTb1YUHdQG9vQ0D8cfsgP/nCy3MwMWbpqBLgOhXGpkZpl6ueijtSn1Ukw
 Hcy6eMesvdK1SH8sxf+zY+gGx5sB68AE+RwS++fnlY2NOjzzaFmgu8b4E38wiCz3ov9t
 jgPST+gb/PET47KO4/eoXfZfAcG3+ExZOQsyIOyRpaRAGXw1G5+yK04AKGOvhlUz+jC8
 l2VjYJeSSt5I2wUssUd14zjBE1BI2wWws+aYQCKFxDsKALlujcix/IkBWZF6CjpCenHA
 AWPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N1E5aHV5MgQzZIYPAIiQS06Rh3TPMQ4N9hoXnxv5KG4=;
 b=cE+LrCvpipf5GwJFNjJR7hdYunWVToHnK7GRlXfhtq6vwxUgVSO48lFZ7Xs+iMbxe7
 0JbwcsNR0qDMhfg6/ngPITwl3UiyU0yf9FiQZ7DTv7A38IgUgbNCUU97f2/ADWa1TYUe
 SJG3DrYGLCH5R3NWSNHprGAcvemg6q9kWc4N0bpq7VGFLzV1fLu+Wohaa0LQjVaJPehp
 OWHKeCvS7TAZk6b+S6KKjG6TJIXyhMgHu8zalf/hC4TVXQYfTqTQ69ZtuWLaKz+j01TN
 VzNfQ/rj4CAdtXAjUPXBBnUWI0PYZeOs3rsPjm8PHTCQwZUnRqLZqSSxpugkh7kLqPMm
 Q/Fg==
X-Gm-Message-State: AOAM532Ll2O9pypxgfJflxbyW5fJkk9I6hTxKX51exmkp4mMlQ9w0QW/
 n42Efej7aDAcZ9VTnjAps4SR2YnI14Z9kCCrefZsdQ==
X-Google-Smtp-Source: ABdhPJwHCFtgpM1gsEx+6IJ0LtzRJvLFLxFxiSM994WtQY9MRlnmmUN6RZVy7WdAFM6NomZZIfAJ/sP2XzNj6juw4Tw=
X-Received: by 2002:ac2:490f:: with SMTP id n15mr365731lfi.39.1591207353379;
 Wed, 03 Jun 2020 11:02:33 -0700 (PDT)
MIME-Version: 1.0
References: <495a9f6b.5f4a.17279379229.Coremail.wyygrowing1224@163.com>
In-Reply-To: <495a9f6b.5f4a.17279379229.Coremail.wyygrowing1224@163.com>
From: Michael Jones <mike@meshplusplus.com>
Date: Wed, 3 Jun 2020 13:02:21 -0500
Message-ID: <CAJQUmm4Xqh+XJsAo4s9sUH5GCTPLvd2MJHu7bOqW824HafNesQ@mail.gmail.com>
To: =?UTF-8?B?6a2P6Imz6Imz?= <wyygrowing1224@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_110237_891981_887D3E83 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12c listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] uci API wrong
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
Content-Type: multipart/mixed; boundary="===============8307330475080769471=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8307330475080769471==
Content-Type: multipart/alternative; boundary="00000000000010157e05a731d5a0"

--00000000000010157e05a731d5a0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 3, 2020 at 3:22 AM =E9=AD=8F=E8=89=B3=E8=89=B3 <wyygrowing1224@=
163.com> wrote:

> Dear!
>     I've tried to write configurations using UCI API in my projects, but
> they often cause my processes to crash, I don't know why=EF=BC=9FI hope y=
ou can
> help me=E3=80=82
> 1=E3=80=81platform=EF=BC=9AX86
> This is the information that my Program crashed
> (gdb) where
> #0  0x00007fef72046277 in raise () from /lib64/libc.so.6
> #1  0x00007fef72047968 in abort () from /lib64/libc.so.6
> #2  0x00007fef72088d37 in __libc_message () from /lib64/libc.so.6
> #3  0x00007fef72091499 in _int_free () from /lib64/libc.so.6
> #4  0x00007fef723df3ef in uci_free_element (e=3D0xa63d50) at
> /home/uci/list.c:72
> #5  0x00007fef723df573 in uci_free_package (package=3Dpackage@entry=3D0xa=
63380)
> at /home/uci/list.c:283
> #6  0x00007fef723dfb0d in uci_cleanup (ctx=3D0xa64300) at
> /home/uci/libuci.c:126
> #7  0x00007fef723dfb6b in uci_free_context (ctx=3D0xa64300) at
> /home/uci/libuci.c:80
> #8  0x0000000000402876 in uci_set_value (path=3D0x40cf59
> "/tmp/DataCollection/MODMAN", config=3D0x40cf51 "rundata", section=3D0x40=
cf43
> "modmanruninfo",
>     option=3D0x40cfbf "akMODMANVTxMuteOpenAMIP", value=3D0x61b780
> <g_Mcastinfo> "0") at ft_uci.c:446
> #9  0x0000000000403dec in Write_Mcast_Data (def=3D1) at ft_daq.c:166
> #10 0x000000000040426e in main (argc=3D1, argv=3D0x7ffe84fa78c8) at
> ft_daq.c:264
>
> 2=E3=80=81This is the function that writes the configuration file,My prog=
ram calls
> uci_set_value function 20 times for 1s.
> /*****************************************************************/
> void uci_set_value(char *path, char *config, char *section, char *option,
> char *value)
> {
>     struct uci_context *ctx =3D NULL;
>     struct uci_ptr ptr;
>     int ret =3D UCI_OK;
>     char str[128] =3D {0};
>     char filepath[128] =3D {0};
>
>     ctx =3D uci_alloc_context();
>     if (!ctx)
>     {
>         ULOG_ERR("uci_alloc_context error,
> config=3D%s,section=3D%s,option=3D%s,value=3D%s\n", config, section, opti=
on, value);
>         return;
>     }
>     if (NULL !=3D path)
>     {
>         uci_set_confdir(ctx, path);
>     }
>
>     memset(&ptr, 0, sizeof(ptr));
>     memset(str, 0 , sizeof(str));
>     sprintf(str, "%s.%s.%s=3D%s", config, section, option, value);
>
>     if (uci_lookup_ptr(ctx, &ptr, str, true) !=3D 0)
>     {
>         ULOG_ERR("uci_lookup_ptr error, str=3D%s\n", str);
>         uci_free_context(ctx);
>         return;
>     }
>     memset(filepath, 0, sizeof(filepath));
>     sprintf(filepath, "%s/%s", path, config);
>
>     if ((0 !=3D strcmp(ctx->confdir, path)) || (0 !=3D strcmp(filepath,
> ptr.p->path)))
>     {
>         if (ptr.p)
>         {
>             uci_unload(ctx, ptr.p);
>         }
>         uci_free_context(ctx);
>         return;
>     }
>
>     ret =3D uci_set(ctx, &ptr);
>     if (0 =3D=3D ret)
>     {
>         ret =3D uci_commit(ctx, &ptr.p, false);
>     }
>     else
>     {
>         ULOG_ERR("uci_set error, str=3D%s\n", str);
>     }
>
>     if (ptr.p)
>     {
>         uci_unload(ctx, ptr.p);
>     }
> // Program terminated with signal 6, Aborted.
>     uci_free_context(ctx);
>
>     return ;
> }
> /*****************************************************************/
>
> 3=E3=80=81My config file
> config modman 'modmanruninfo'
>         option akTestDID 'unknown'
>         option akTestUptime 'unknown'
>         option akTestSatelliteNetworkID 'unknown'
>         akMODMANVTxMuteOpenAMIP 'unknown'
>



I don't know what's wrong with your code above, and I haven't tried to
analyze it for mistakes.

I'm replying to you because I wrote a C++ wrapper around UCI a while ago,
that involved documenting some of the conventions of the libuci API.

I'm providing it here as use-at-your-own-risk, and will not provide
updates, bug fixes, security fixes, or really anything, pertaining to this
code. There are almost certainly bugs in this code, because I do not use
it. I abandoned this approach to interacting with the UCI subsystem in
favor of the rpcd UCI module.

Released under the same license as libUCI itself (LGPL 2.1).

It may help you understand the libuci c API. It may not.

/** \file
 *
 */

#include <string>
#include <vector>
#include <utility>
#include <string_view>

#include "uci.h"

#ifndef LIBUCIXX_PARSE_UCI_CONFIG_FILE_H_A2CD8106_1003_4A6D_9A46_4A128EA832=
62
#define LIBUCIXX_PARSE_UCI_CONFIG_FILE_H_A2CD8106_1003_4A6D_9A46_4A128EA832=
62
#pragma once

namespace libucixx
{

namespace impl
{

/** \class ScopeGuard
 * The class \c ScopeGuard provides a mechanism to call \c operator()
on the object
 * provided as the constructor parameter for the \c ScopeGuard object
when \c ScopeGuard
 * has it's destructor called. This provides a guaranteed, exception
safe, way of ensuring
 * that cleanup operations are called at end of scope.
 */
template<typename T>
struct ScopeGuard final
{
    /**
     * Does nothing more than store the parameter in a member variable.
     */
    ScopeGuard(T t)
     : m_t(std::move(t))
    { }

    /**
     * Calls the stored object's \c operator() function.
     */
    ~ScopeGuard()
    {
        m_t();
    }

private:
    T m_t; ///< The stored object to invoke on destruction.
}; // struct ScopeGuard

/**
 * Template deduction guide for \c ScopeGuard that avoids the need for
a factory function.
 */
template<typename T> ScopeGuard(T t) -> ScopeGuard<T>;

//-------------------------------------------------------------------------=
----

/**
 * Extracts error string from the \c uci_context provided,
 * and throws a runtime exception with its contents.
 */
inline void throw_uci_error(uci_context & ctx)
{
    char * dest =3D nullptr;
    const ScopeGuard destGuard([&dest](void){ free(dest); });

    uci_get_errorstr(&ctx, &dest, nullptr);
    if(dest)
    {
        throw std::runtime_error(dest);
    }
    else
    {
        throw std::runtime_error("Unknown UCI error");
    }
} // throw_uci_error()

//-------------------------------------------------------------------------=
----

/**
 * Assert that the provided \c std::string_view is nul terminated.
 */
inline void assert_nul_terminated(std::string_view str)
{
    assert(str.data() + str.size() =3D=3D '\0');
}

} // namespace impl

//-------------------------------------------------------------------------=
----

/**
 * Forward declare types.
 */
struct UciOption;
struct UciSection;
struct UciPackage;
struct UciContext;

//-------------------------------------------------------------------------=
----

/** \class UciOption
 *
 */
struct UciOption
{
private:
    friend struct UciSection;
    struct constructor_access{}; ///< Provides access to the
constructor for friends.

public:
    /**
     * Constructs \c UciOption. Use \c UciSection::get_option() to
acquire a \c UciOption.
     *
     * \param key     - The \c constructor_access type that's only
visible to friend classes.
     *                  Used to guard against improper use of \c UciOption.
     * \param pSec    - The \c UciSection that this \c UciOption belongs to=
.
     * \param pUciOpt - The \c uci_option from libuci.
     */
    UciOption(constructor_access key, std::shared_ptr<UciSection>
pSec, uci_option * pUciOpt);

    /**
     * \note The returned \c std::string_view's lifetime is the same as the
     *       lifetime of the \c UciPackage that this \c UciOption belongs t=
o.
     *
     * \return The name of the this option.
     */
    std::string_view get_name(void);

    /**
     * \return TRUE  - This option represents a list of values
     *         FALSE - This option represents a scalar value
     */
    bool is_list(void);

    /**
     * \note The returned \c std::string_view's lifetime is the same as the
     *       lifetime of the \c UciPackage that this option belongs to.
     *
     * \return The value of the this option.
     */
    std::string_view get_value(void);

    /**
     * \param value - Nul terminated value to set this option to.
     */
    void set_value(std::string_view value);

    /**
     * \note The returned \c std::string_view's lifetime is the same as the
     *       lifetime of the \c UciPackage that this option belongs to.
     *
     * \return The value of the this option as a list of values.
     */
    std::vector<std::string_view> get_list(void);

    /**
     * \param list - vector of nul terminated \c std::string_views to
     *               replace the current list of option values with.
     */
    void set_list(std::vector<std::string_view> list);

    /**
     * \param value - Nul terminated value to add to this option's list.
     */
    void add_to_list(std::string_view);

    /**
     * \param value - Nul terminated value to remove from this option's lis=
t.
     */
    void remove_from_list(std::string_view);

private:
    /**
     * \return The \c uci_context held by the \c UciContext class
     * used to acquire this UciOption via the \c UciSection and
     * \c UciPackage shared pointers.
     */
    uci_context * get_uci_context(void);

private:
    uci_option *                m_pUciOpt; ///< The \c struct
uci_option from libuci. Lifetime managed by the associated \c
UciPackage object.
    std::shared_ptr<UciSection> m_pSec;    ///< Shared pointer to \c
UciSection that this option belongs to. Keeps data retrieved from
libuci alive.
}; // UciOption

//-------------------------------------------------------------------------=
----

/** \class UciSection
 *
 */
struct UciSection : public std::enable_shared_from_this<UciSection>
{
private:
    friend struct UciPackage;
    struct constructor_access{}; ///< Provides access to the
constructor for friends.

public:
    /**
     * Constructs \c UciSection. Use \c UciPackage::get_section() to
acquire a \c UciSection.
     *
     * \param key     - The \c constructor_access type that's only
visible to friend classes.
     *                  Used to guard against improper use of \c UciSection=
.
     * \param pSec    - The \c UciPackage that this \c UciSection belongs t=
o.
     * \param pUciOpt - The \c uci_section from libuci.
     */
    UciSection(constructor_access key, std::shared_ptr<UciPackage>
pPkg, uci_section * pUciSec);

    /**
     * \note The returned \c std::string_view's lifetime is the same as the
     *       lifetime of the \c UciPackage that this \c UciSection belongs =
to.
     *
     * \return The name of the this section.
     */
    std::string_view get_name(void);

    /**
     * \note The returned \c std::string_view's lifetime is the same as the
     *       lifetime of the \c UciPackage that this \c UciSection belongs =
to.
     *
     * \return The type of this section.
     */
    std::string_view get_type(void);

    /**
     * \note The returned \c std::string_view's lifetime is the same as the
     *       lifetime of the \c UciPackage that this \c UciSection belongs =
to.
     *
     * \return The list of options that this section contains.
     */
    std::vector<std::string_view> list_options(void);

    /**
     * Looks up the UciOption associated with the provided nul-terminated n=
ame.
     *
     * \param name - the name of the option.
     */
    std::shared_ptr<UciOption> get_option(std::string_view name);

    /**
     * Creates and inserts a new string-type option with the provided value=
.
     *
     * \param name  - the name of the option.
     * \param value - the value of the option.
     */
    std::shared_ptr<UciOption> add_option(std::string_view name,
std::string_view value);

    /**
     * Creates and inserts a new list-type option with the provided value.
     *
     * \param name  - the name of the option.
     * \param value - the values of the option.
     */
    std::shared_ptr<UciOption> add_option(std::string_view name,
std::list<std::string_view> value);

    /**
     * Deletes the option with the provided name.
     *
     * \param name - the option to delete.
     */
    void delete_option(std::string_view name);

    /**
     * Change the index of this section.
     *
     * \param the index to change this section to.
     */
    void set_section_index(int idx);

private:
    friend struct UciOption;
    /**
     * \return The \c uci_context held by the \c UciContext class used
     * to acquire this \c UciSection via the \c UciPackage shared pointer.
     */
    uci_context * get_uci_context(void);

private:
    uci_section *               m_pUciSec; ///<
    std::shared_ptr<UciPackage> m_pPkg;    ///<
}; // struct UciSection

//-------------------------------------------------------------------------=
----

/** \class UciPackage
 *
 */
struct UciPackage : public std::enable_shared_from_this<UciPackage>
{
private:
    friend struct UciContext;
    struct constructor_access{}; ///< Provides access to the
constructor for friends.

public:
    /**
     * \param key     - The \c constructor_access type that's only
visible to friend classes.
     *                  Used to guard against improper use of \c UciPackage=
.
     * \param pSec    - The \c UciContext that this UciPackage belongs to.
     * \param pUciOpt - The \c uci_package from libuci.
     */
    UciPackage(constructor_access key, std::shared_ptr<UciContext>
pCtx, uci_package * pUciPkg);

    /**
     * Ensures that this UciPackage, and everything that's associated
with it, is unloaded from libuci.
     */
    ~UciPackage(void);

    /**
     * \note The returned \c std::string_view's lifetime is the same as the
     *       lifetime of this \c UciPackage.
     *
     * \return The name of this package.
     */
    std::string_view get_name(void);

    /**
     * \note The returned \c std::string_view's lifetime is the same as the
     *       lifetime of the \c UciPackage that this \c UciSection belongs =
to.
     *
     * \return A collection of section names.
     */
    std::vector<std::string_view> list_sections(void);

    /**
     * \param name - A nul-terminated string indicating the desired
section name.
     * \return a UciSection representing the section indicated by name.
     */
    std::shared_ptr<UciSection> get_section(std::string_view name);

    /**
     * \param name - A nul-terminated string indicating the desired
section name.
     * \return a UciSection representing the newly added section.
     */
    std::shared_ptr<UciSection> add_section(std::string_view type,
std::string_view name =3D std::string_view());

    /**
     * Delete a section by name.
     *
     * \param name - A nul-terminated string indicating the desired
section name.
     */
    void delete_section(std::string_view name);

    /**
     * Saves the changes that have been made to this UciPackage to
disk as a delta.
     * Use \c UciPackage::commit() to apply these changes.
     */
    void save(void);

    /**
     * Applies all deltas saved to disk to this package'S config file.
     *
     * \note Warning! Invalidates all UciSections and UciOptions
derived from this UciPackage
     *
     * \param overwrite - ???
     */
    void commit(bool overwrite =3D true);

private:
    friend struct UciSection;

    /**
     * \return The \c uci_context held by the \c UciContext class
     * used to acquire this \c UciPackage shared pointer.
     */
    uci_context * get_uci_context(void);

private:
    uci_package *               m_pUciPkg; ///<
    std::shared_ptr<UciContext> m_pCtx;    ///<
}; // struct UciPackage

//-------------------------------------------------------------------------=
----

/** \class UciContext
 *
 */
struct UciContext : public std::enable_shared_from_this<UciContext>
{
    /**
     * Allocates a libuci \c struct uci_context.
     */
    UciContext(void);

    /**
     * Frees the libuci \c struct uci_context.
     */
    ~UciContext(void);

    /**
     * \return List of UCI packages available in the configured config
directory.
     */
    std::vector<std::string> list_packages(void);

    /**
     * \param name - the desired package name.
     *
     * \note When the UciPackage's shared pointer is deleted, the
named package will
     *       be unloaded from libuci.
     *
     * \return A shared pointer to a UciPackage representing the
indicated package name.
     */
    std::shared_ptr<UciPackage> load_package(std::string_view name);

    /**
     * Sets the directory that libuci will use to save deltas.
     *
     * \param dir - the indicated, nul-terminatred, directory.
     */
    void set_save_dir(std::string_view dir);

    /**
     * Sets the directory that libuci will search from config files.
     *
     * \param dir - the indicated, nul-terminatred, directory.
     */
    void set_config_dir(std::string_view dir);

    /**
     * Adds an additional directory that libuci will use to search for delt=
as.
     *
     * \param dir - the indicated, nul-terminatred, directory.
     */
    void add_delta_path(std::string_view dir);

    /**
     * Sets the backend that libuci will use for storage.
     *
     * \param backend - the indicated, nul-terminatred, backend.
     */
    void set_backend(std::string_view backend);

private:
    friend struct UciPackage;

    /**
     * \return the libuci \c struct uci_context.
     */
    uci_context * get_uci_context(void);

private:
    uci_context * m_pUciCtx; ///<
}; // struct UciContext

//-------------------------------------------------------------------------=
----
// Inline functions
//-------------------------------------------------------------------------=
----

//-------------------------------------------------------------------------=
----
// Inlines of UciOption
//-------------------------------------------------------------------------=
----
inline UciOption::UciOption(constructor_access,
std::shared_ptr<UciSection> pSec, uci_option * pUciOpt)
 : m_pSec(std::move(pSec))
 , m_pUciOpt(pUciOpt)
{
    assert(nullptr !=3D m_pSec);
    assert(nullptr !=3D m_pUciOpt);
}

inline std::string_view UciOption::get_name(void)
{
    return m_pUciOpt->e.name;
}

inline bool UciOption::is_list(void)
{
    return UCI_TYPE_LIST =3D=3D m_pUciOpt->type;
}

inline std::string_view UciOption::get_value(void)
{
    return m_pUciOpt->v.string;
}

inline void UciOption::set_value(std::string_view value)
{
    assert(false);

    uci_ptr ptr;
    // Set values to ... something?
    if(UCI_OK !=3D uci_add_list(get_uci_context(), &ptr))
    {
        impl::throw_uci_error(*get_uci_context());
    }
}

inline std::vector<std::string_view> UciOption::get_list(void)
{
    std::vector<std::string_view> list;
    {
        /*
         * List is a list of uci_elements, and in the context of
         * a uci_option with type list, each such element's name
         * is a value in the list.
         */
        uci_element *e =3D nullptr;
        uci_foreach_element(&(m_pUciOpt->v.list), e)
        {
            list.emplace_back(e->name);
        }
    }
    return list;
}

inline void UciOption::set_list(std::vector<std::string_view> list)
{
    assert(false);

    //TODO:
    // Delete all items and add all the new ones? No clear API option
}

inline void UciOption::add_to_list(std::string_view)
{
    assert(false);

    uci_ptr ptr;
    // Set values to ... something?
    if(UCI_OK !=3D uci_add_list(get_uci_context(), &ptr))
    {
        impl::throw_uci_error(*get_uci_context());
    }
}

inline void UciOption::remove_from_list(std::string_view)
{
    assert(false);

    uci_ptr ptr;
    // Set values to ... something?
    if(UCI_OK !=3D uci_del_list(get_uci_context(), &ptr))
    {
        impl::throw_uci_error(*get_uci_context());
    }
}

inline uci_context * UciOption::get_uci_context(void)
{
    return m_pSec->get_uci_context();
}

//-------------------------------------------------------------------------=
----
// Inlines of UciSection
//-------------------------------------------------------------------------=
----
inline UciSection::UciSection(constructor_access,
std::shared_ptr<UciPackage> pPkg, uci_section * pUciSec)
 : m_pPkg(std::move(pPkg))
 , m_pUciSec(pUciSec)
{
    assert(nullptr !=3D m_pPkg);
    assert(nullptr !=3D m_pUciSec);
}

inline std::string_view UciSection::get_name(void)
{
    return m_pUciSec->e.name;
}

inline std::string_view UciSection::get_type(void)
{
    return m_pUciSec->type;
}

inline std::vector<std::string_view> UciSection::list_options(void)
{
    std::vector<std::string_view> sections;
    {
        uci_element *e =3D nullptr;
        uci_foreach_element(&(m_pUciSec->options), e)
        {
            uci_option *o =3D uci_to_option(e);
            sections.emplace_back(o->e.name);
        }
    }
    return sections;
}

inline std::shared_ptr<UciOption> UciSection::get_option(std::string_view n=
ame)
{
    impl::assert_nul_terminated(name);

    if(uci_option * pOpt =3D uci_lookup_option(get_uci_context(),
m_pUciSec, name.data()); pOpt !=3D nullptr)
    {
        return std::make_shared<UciOption>(UciOption::constructor_access(),
this->shared_from_this(), pOpt);
    }
    else
    {
        return {};
    }
}

inline std::shared_ptr<UciOption>
UciSection::add_option(std::string_view name, std::string_view value)
{
    assert(false);

    uci_ptr ptr;
    // Set values to ... something?
    if(UCI_OK !=3D uci_set(get_uci_context(), &ptr))
    {
        impl::throw_uci_error(*get_uci_context());
    }
}

inline std::shared_ptr<UciOption>
UciSection::add_option(std::string_view name,
std::list<std::string_view> value)
{
    assert(false);

    uci_ptr ptr;
    // Set values to ... something?
    if(UCI_OK !=3D uci_set(get_uci_context(), &ptr))
    {
        impl::throw_uci_error(*get_uci_context());
    }
}

inline void UciSection::delete_option(std::string_view name)
{
    assert(false);

    uci_ptr ptr;
    // Set values to ... something?
    if(UCI_OK !=3D uci_delete(get_uci_context(), &ptr))
    {
        impl::throw_uci_error(*get_uci_context());
    }
}

inline void UciSection::set_section_index(int idx)
{
    if(UCI_OK !=3D uci_reorder_section(get_uci_context(), m_pUciSec, idx))
    {
        impl::throw_uci_error(*get_uci_context());
    }
}

inline uci_context * UciSection::get_uci_context(void)
{
    return m_pPkg->get_uci_context();
}

//-------------------------------------------------------------------------=
----
// Inlines of UciPackage
//-------------------------------------------------------------------------=
----
inline UciPackage::UciPackage(constructor_access,
std::shared_ptr<UciContext> pCtx, uci_package * pUciPkg)
 : m_pCtx(std::move(pCtx))
 , m_pUciPkg(pUciPkg)
{
    assert(nullptr !=3D m_pCtx);
    assert(nullptr !=3D m_pUciPkg);
}

inline UciPackage::~UciPackage()
{
    if(UCI_OK !=3D uci_unload(get_uci_context(), m_pUciPkg))
    {
        impl::throw_uci_error(*get_uci_context());
    }
}

inline std::string_view UciPackage::get_name(void)
{
    return m_pUciPkg->e.name;
}

inline std::vector<std::string_view> UciPackage::list_sections(void)
{
    std::vector<std::string_view> sections;

    {
        uci_element *e =3D nullptr;
        uci_foreach_element( &m_pUciPkg->sections, e)
        {
            uci_section *s =3D uci_to_section(e);
            sections.emplace_back(s->e.name);
        }
    }

    return sections;
}

inline std::shared_ptr<UciSection>
UciPackage::get_section(std::string_view name)
{
    impl::assert_nul_terminated(name);

    if(uci_section * pSec =3D uci_lookup_section(get_uci_context(),
m_pUciPkg, name.data()); pSec !=3D nullptr)
    {
        return std::make_shared<UciSection>(UciSection::constructor_access(=
),
this->shared_from_this(), pSec);
    }
    else
    {
        return {};
    }
}

inline std::shared_ptr<UciSection>
UciPackage::add_section(std::string_view type, std::string_view name)
{
    uci_section * pSec =3D nullptr;
    if(UCI_OK !=3D uci_add_section(get_uci_context(), m_pUciPkg,
type.data(), &pSec))
    {
        impl::throw_uci_error(*get_uci_context());
    }

    if( ! name.empty())
    {
        uci_ptr ptr;
        // Set values to ... something?
        if(UCI_OK !=3D uci_rename(get_uci_context(), &ptr))
        {
            impl::throw_uci_error(*get_uci_context());
        }
    }
    return std::make_shared<UciSection>(UciSection::constructor_access(),
this->shared_from_this(), pSec);
}

inline void UciPackage::delete_section(std::string_view name)
{
    assert(false);

    uci_ptr ptr;
    // Set values to ... something?
    if(UCI_OK !=3D uci_delete(get_uci_context(), &ptr))
    {
        impl::throw_uci_error(*get_uci_context());
    }
}

inline void UciPackage::save(void)
{
    if(UCI_OK !=3D uci_save(get_uci_context(), m_pUciPkg))
    {
        impl::throw_uci_error(*get_uci_context());
    }
}

inline void UciPackage::commit(bool overwrite)
{
    if(UCI_OK !=3D uci_commit(get_uci_context(), &m_pUciPkg, overwrite))
    {
        impl::throw_uci_error(*get_uci_context());
    }
}

inline uci_context * UciPackage::UciPackage::get_uci_context(void)
{
    return m_pCtx->get_uci_context();
}

//-------------------------------------------------------------------------=
----
// Inlines of UciContext
//-------------------------------------------------------------------------=
----
inline UciContext::UciContext(void)
 : m_pUciCtx(uci_alloc_context())
{
    assert(nullptr !=3D m_pUciCtx);
}

inline UciContext::~UciContext(void)
{
    uci_free_context(m_pUciCtx);
}

inline std::vector<std::string> UciContext::list_packages(void)
{
    char **configs =3D nullptr;
    const impl::ScopeGuard configGuard([&configs](void){ free(configs); });

    if((UCI_OK !=3D uci_list_configs(m_pUciCtx, &configs)) || ! configs)
    {
        impl::throw_uci_error(*m_pUciCtx);
    }

    std::vector<std::string> configvect;
    for(char ** p =3D configs; *p; ++p)
    {
        configvect.emplace_back(*p);
    }

    return configvect;
}

inline std::shared_ptr<UciPackage>
UciContext::load_package(std::string_view name)
{
    // TODO: It would be ideal if there was a way to ensure a
UciPackage loaded twice had the
    //       same lifetime. probably need a std::map<std::string,
std::weak_ptr<UciPackage>>;
    impl::assert_nul_terminated(name);

    uci_package * pUciPkg =3D nullptr;
    if(UCI_OK !=3D uci_load(m_pUciCtx, name.data(), &pUciPkg) || ! pUciPkg)
    {
        impl::throw_uci_error(*m_pUciCtx);
    }
    return std::make_shared<UciPackage>(UciPackage::constructor_access(),
this->shared_from_this(), pUciPkg);
}

inline void UciContext::set_save_dir(std::string_view dir)
{
    impl::assert_nul_terminated(dir);

    if(UCI_OK !=3D uci_set_savedir(m_pUciCtx, dir.data()))
    {
        impl::throw_uci_error(*m_pUciCtx);
    }
}

inline void UciContext::set_config_dir(std::string_view dir)
{
    impl::assert_nul_terminated(dir);

    if(UCI_OK !=3D uci_set_confdir(m_pUciCtx, dir.data()))
    {
        impl::throw_uci_error(*m_pUciCtx);
    }
}

inline void UciContext::add_delta_path(std::string_view dir)
{
    impl::assert_nul_terminated(dir);

    if(UCI_OK !=3D uci_add_delta_path(m_pUciCtx, dir.data()))
    {
        impl::throw_uci_error(*m_pUciCtx);
    }
}

inline void UciContext::set_backend(std::string_view backend)
{
    impl::assert_nul_terminated(backend);

    if(UCI_OK !=3D uci_set_backend(m_pUciCtx, backend.data()))
    {
        impl::throw_uci_error(*m_pUciCtx);
    }
}

inline uci_context * UciContext::get_uci_context(void)
{
    return m_pUciCtx;
}

} // namespace libucixx

#endif // LIBUCIXX_PARSE_UCI_CONFIG_FILE_H_A2CD8106_1003_4A6D_9A46_4A128EA8=
3262

--00000000000010157e05a731d5a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 3, 2020 at 3:22 AM =E9=AD=
=8F=E8=89=B3=E8=89=B3 &lt;<a href=3D"mailto:wyygrowing1224@163.com">wyygrow=
ing1224@163.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div style=3D"line-height:1.7;color:rgb(0,0,0);font-size:14p=
x;font-family:Arial"><div style=3D"margin:0px">Dear!</div><div style=3D"mar=
gin:0px">=C2=A0=C2=A0=C2=A0 I&#39;ve tried to write configurations using UC=
I API in my projects, but they often cause my processes to crash, I don&#39=
;t know why=EF=BC=9FI hope you can help me=E3=80=82</div><div style=3D"marg=
in:0px">1=E3=80=81platform=EF=BC=9AX86</div><div style=3D"margin:0px">This =
is the information that my Program crashed</div><div style=3D"margin:0px"><=
span style=3D"color:rgb(46,48,51);font-family:Arial,&quot;Microsoft YaHei&q=
uot;,=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91,=E5=AE=8B=E4=BD=93,&quot;Malgun G=
othic&quot;,Meiryo,sans-serif;font-size:12px;font-style:normal;font-variant=
:normal;font-weight:normal;letter-spacing:normal;line-height:20px;text-alig=
n:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing=
:0px;background-color:rgb(238,240,242);display:inline;float:none">(gdb) whe=
re<br>#0=C2=A0 0x00007fef72046277 in raise () from /lib64/libc.so.6<br>#1=
=C2=A0 0x00007fef72047968 in abort () from /lib64/libc.so.6<br>#2=C2=A0 0x0=
0007fef72088d37 in __libc_message () from /lib64/libc.so.6<br>#3=C2=A0 0x00=
007fef72091499 in _int_free () from /lib64/libc.so.6<br>#4=C2=A0 0x00007fef=
723df3ef in uci_free_element (e=3D0xa63d50) at /home/uci/list.c:72<br>#5=C2=
=A0 0x00007fef723df573 in uci_free_package (package=3Dpackage@entry=3D0xa63=
380) at /home/uci/list.c:283<br>#6=C2=A0 0x00007fef723dfb0d in uci_cleanup =
(ctx=3D0xa64300) at /home/uci/libuci.c:126<br>#7=C2=A0 0x00007fef723dfb6b i=
n uci_free_context (ctx=3D0xa64300) at /home/uci/libuci.c:80<br>#8=C2=A0 0x=
0000000000402876 in </span><span style=3D"font-family:Arial,&quot;Microsoft=
 YaHei&quot;,=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91,=E5=AE=8B=E4=BD=93,&quot;=
Malgun Gothic&quot;,Meiryo,sans-serif;font-size:12px;font-style:normal;font=
-variant:normal;font-weight:normal;letter-spacing:normal;line-height:20px;t=
ext-align:start;text-indent:0px;text-transform:none;white-space:normal;word=
-spacing:0px;background-color:rgb(238,240,242);display:inline;float:none;co=
lor:rgb(221,64,50)">uci_set_value </span><span style=3D"color:rgb(46,48,51)=
;font-family:Arial,&quot;Microsoft YaHei&quot;,=E5=BE=AE=E8=BD=AF=E9=9B=85=
=E9=BB=91,=E5=AE=8B=E4=BD=93,&quot;Malgun Gothic&quot;,Meiryo,sans-serif;fo=
nt-size:12px;font-style:normal;font-variant:normal;font-weight:normal;lette=
r-spacing:normal;line-height:20px;text-align:start;text-indent:0px;text-tra=
nsform:none;white-space:normal;word-spacing:0px;background-color:rgb(238,24=
0,242);display:inline;float:none">(path=3D0x40cf59 &quot;/tmp/DataCollectio=
n/MODMAN&quot;, config=3D0x40cf51 &quot;rundata&quot;, section=3D0x40cf43 &=
quot;modmanruninfo&quot;, <br>=C2=A0=C2=A0=C2=A0 option=3D0x40cfbf &quot;ak=
MODMANVTxMuteOpenAMIP&quot;, value=3D0x61b780 &lt;g_Mcastinfo&gt; &quot;0&q=
uot;) at ft_uci.c:446<br>#9=C2=A0 0x0000000000403dec in Write_Mcast_Data (d=
ef=3D1) at ft_daq.c:166<br>#10 0x000000000040426e in main (argc=3D1, argv=
=3D0x7ffe84fa78c8) at ft_daq.c:264</span></div><div style=3D"margin:0px"><s=
pan style=3D"color:rgb(46,48,51);font-family:Arial,&quot;Microsoft YaHei&qu=
ot;,=E5=BE=AE=E8=BD=AF=E9=9B=85=E9=BB=91,=E5=AE=8B=E4=BD=93,&quot;Malgun Go=
thic&quot;,Meiryo,sans-serif;font-size:12px;font-style:normal;font-variant:=
normal;font-weight:normal;letter-spacing:normal;line-height:20px;text-align=
:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:=
0px;background-color:rgb(238,240,242);display:inline;float:none"><br></span=
></div><div style=3D"margin:0px">2=E3=80=81This is the function that writes=
 the configuration file,My program calls uci_set_value function 20 times fo=
r 1s.<br>/*****************************************************************=
/<br>void uci_set_value(char *path, char *config, char *section, char *opti=
on, char *value)<br>{<br>=C2=A0=C2=A0=C2=A0 struct uci_context *ctx =3D NUL=
L;<br>=C2=A0=C2=A0=C2=A0 struct uci_ptr ptr;<br>=C2=A0=C2=A0=C2=A0 int ret =
=3D UCI_OK;<br>=C2=A0=C2=A0=C2=A0 char str[128] =3D {0};<br>=C2=A0=C2=A0=C2=
=A0 char filepath[128] =3D {0};<br><br>=C2=A0=C2=A0=C2=A0 ctx =3D uci_alloc=
_context();<br>=C2=A0=C2=A0=C2=A0 if (!ctx)<br>=C2=A0=C2=A0=C2=A0 {<br>=C2=
=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ULOG_ERR(&quot;uci_alloc_context error, =
config=3D%s,section=3D%s,option=3D%s,value=3D%s\n&quot;, config, section, o=
ption, value);<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 return;<br>=C2=A0=
=C2=A0=C2=A0 }<br>=C2=A0=C2=A0=C2=A0 if (NULL !=3D path)<br>=C2=A0=C2=A0=C2=
=A0 {<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 uci_set_confdir(ctx, path);<=
br>=C2=A0=C2=A0=C2=A0 }<br>=C2=A0=C2=A0=C2=A0 <br>=C2=A0=C2=A0=C2=A0 memset=
(&amp;ptr, 0, sizeof(ptr));<br>=C2=A0=C2=A0=C2=A0 memset(str, 0 , sizeof(st=
r));<br>=C2=A0=C2=A0=C2=A0 sprintf(str, &quot;%s.%s.%s=3D%s&quot;, config, =
section, option, value);<br>=C2=A0=C2=A0=C2=A0 <br>=C2=A0=C2=A0=C2=A0 if (u=
ci_lookup_ptr(ctx, &amp;ptr, str, true) !=3D 0) <br>=C2=A0=C2=A0=C2=A0 {<br=
>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ULOG_ERR(&quot;uci_lookup_ptr error,=
 str=3D%s\n&quot;, str);<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 uci_free_=
context(ctx);<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 return;<br>=C2=A0=C2=
=A0=C2=A0 }<br>=C2=A0=C2=A0=C2=A0 memset(filepath, 0, sizeof(filepath));<br=
>=C2=A0=C2=A0=C2=A0 sprintf(filepath, &quot;%s/%s&quot;, path, config);<br>=
=C2=A0<br>=C2=A0=C2=A0=C2=A0 if ((0 !=3D strcmp(ctx-&gt;confdir, path)) || =
(0 !=3D strcmp(filepath, ptr.p-&gt;path)))<br>=C2=A0=C2=A0=C2=A0 {<br>=C2=
=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 if (ptr.p)<br>=C2=A0=C2=A0=C2=A0 =C2=A0=
=C2=A0=C2=A0 {<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =
uci_unload(ctx, ptr.p);=C2=A0=C2=A0=C2=A0 <br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=
=A0=C2=A0 }<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 uci_free_context(ctx);=
<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 return;<br>=C2=A0=C2=A0=C2=A0 }<b=
r>=C2=A0=C2=A0=C2=A0 <br>=C2=A0=C2=A0=C2=A0 ret =3D uci_set(ctx, &amp;ptr);=
<br>=C2=A0=C2=A0=C2=A0 if (0 =3D=3D ret)<br>=C2=A0=C2=A0=C2=A0 {<br>=C2=A0=
=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ret =3D uci_commit(ctx, &amp;ptr.p, false);=
<br>=C2=A0=C2=A0=C2=A0 }<br>=C2=A0=C2=A0=C2=A0 else<br>=C2=A0=C2=A0=C2=A0 {=
<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ULOG_ERR(&quot;uci_set error, str=
=3D%s\n&quot;, str);<br>=C2=A0=C2=A0=C2=A0 }<br>=C2=A0=C2=A0=C2=A0 <br>=C2=
=A0=C2=A0=C2=A0 if (ptr.p)<br>=C2=A0=C2=A0=C2=A0 {<br>=C2=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0=C2=A0 uci_unload(ctx, ptr.p);=C2=A0=C2=A0=C2=A0 <br>=C2=A0=C2=
=A0=C2=A0 }</div><div style=3D"margin:0px"><span style=3D"color:rgb(221,64,=
50)">// Program terminated with signal 6, Aborted.<br></span></div><div sty=
le=3D"margin:0px"><span style=3D"color:rgb(221,64,50)">=C2=A0=C2=A0=C2=A0 <=
/span><span style=3D"color:rgb(0,0,0)">uci_free_context(ctx);</span></div><=
div style=3D"margin:0px"><br>=C2=A0=C2=A0=C2=A0 return ;<br>}</div><div sty=
le=3D"margin:0px">/********************************************************=
*********/</div><div style=3D"margin:0px"><br></div><div style=3D"margin:0p=
x">3=E3=80=81My config file</div><div style=3D"margin:0px">config modman &#=
39;modmanruninfo&#39;<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 option =
akTestDID &#39;unknown&#39;<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 o=
ption akTestUptime &#39;unknown&#39;<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 option akTestSatelliteNetworkID &#39;unknown&#39;<br></div><div s=
tyle=3D"margin:0px">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 akMODMANVTxM=
uteOpenAMIP &#39;unknown&#39;</div></div></blockquote><div><br></div><div><=
br></div><div><br></div><div>I don&#39;t know what&#39;s wrong with your co=
de above, and I haven&#39;t tried to analyze it for mistakes.</div><div><br=
></div><div>I&#39;m replying to you because I wrote a C++ wrapper around UC=
I a while ago, that involved documenting some of the conventions of the lib=
uci API.</div><div><br></div><div>I&#39;m providing it here as use-at-your-=
own-risk, and will not provide updates, bug fixes, security fixes, or reall=
y anything, pertaining to this code. There are almost certainly bugs in thi=
s code, because I do not use it. I abandoned this approach to interacting w=
ith the UCI subsystem in favor of the rpcd UCI module.<br></div><div><br></=
div><div>Released under the same license as libUCI itself (LGPL 2.1).</div>=
<div><br></div><div>It may help you understand the libuci c API. It may not=
.<br></div><div><br></div><div><pre>/** \file
 *
 */

#include &lt;string&gt;
#include &lt;vector&gt;
#include &lt;utility&gt;
#include &lt;string_view&gt;

#include &quot;uci.h&quot;

#ifndef LIBUCIXX_PARSE_UCI_CONFIG_FILE_H_A2CD8106_1003_4A6D_9A46_4A128EA832=
62
#define LIBUCIXX_PARSE_UCI_CONFIG_FILE_H_A2CD8106_1003_4A6D_9A46_4A128EA832=
62
#pragma once

namespace libucixx
{

namespace impl
{

/** \class ScopeGuard
 * The class \c ScopeGuard provides a mechanism to call \c operator() on th=
e object
 * provided as the constructor parameter for the \c ScopeGuard object when =
\c ScopeGuard
 * has it&#39;s destructor called. This provides a guaranteed, exception sa=
fe, way of ensuring
 * that cleanup operations are called at end of scope.
 */
template&lt;typename T&gt;
struct ScopeGuard final
{
    /**
     * Does nothing more than store the parameter in a member variable.
     */
    ScopeGuard(T t)
     : m_t(std::move(t))
    { }

    /**
     * Calls the stored object&#39;s \c operator() function.
     */
    ~ScopeGuard()
    {
        m_t();
    }

private:
    T m_t; ///&lt; The stored object to invoke on destruction.
}; // struct ScopeGuard

/**
 * Template deduction guide for \c ScopeGuard that avoids the need for a fa=
ctory function.
 */
template&lt;typename T&gt; ScopeGuard(T t) -&gt; ScopeGuard&lt;T&gt;;

//-------------------------------------------------------------------------=
----

/**
 * Extracts error string from the \c uci_context provided,
 * and throws a runtime exception with its contents.
 */
inline void throw_uci_error(uci_context &amp; ctx)
{
    char * dest =3D nullptr;
    const ScopeGuard destGuard([&amp;dest](void){ free(dest); });

    uci_get_errorstr(&amp;ctx, &amp;dest, nullptr);
    if(dest)
    {
        throw std::runtime_error(dest);
    }
    else
    {
        throw std::runtime_error(&quot;Unknown UCI error&quot;);
    }
} // throw_uci_error()

//-------------------------------------------------------------------------=
----

/**
 * Assert that the provided \c std::string_view is nul terminated.
 */
inline void assert_nul_terminated(std::string_view str)
{
    assert(str.data() + str.size() =3D=3D &#39;\0&#39;);
}

} // namespace impl

//-------------------------------------------------------------------------=
----

/**
 * Forward declare types.
 */
struct UciOption;
struct UciSection;
struct UciPackage;
struct UciContext;

//-------------------------------------------------------------------------=
----

/** \class UciOption
 *
 */
struct UciOption
{
private:
    friend struct UciSection;
    struct constructor_access{}; ///&lt; Provides access to the constructor=
 for friends.

public:
    /**
     * Constructs \c UciOption. Use \c UciSection::get_option() to acquire =
a \c UciOption.
     *
     * \param key     - The \c constructor_access type that&#39;s only visi=
ble to friend classes.
     *                  Used to guard against improper use of \c UciOption.
     * \param pSec    - The \c UciSection that this \c UciOption belongs to=
.
     * \param pUciOpt - The \c uci_option from libuci.
     */
    UciOption(constructor_access key, std::shared_ptr&lt;UciSection&gt; pSe=
c, uci_option * pUciOpt);

    /**
     * \note The returned \c std::string_view&#39;s lifetime is the same as=
 the
     *       lifetime of the \c UciPackage that this \c UciOption belongs t=
o.
     *
     * \return The name of the this option.
     */
    std::string_view get_name(void);

    /**
     * \return TRUE  - This option represents a list of values
     *         FALSE - This option represents a scalar value
     */
    bool is_list(void);

    /**
     * \note The returned \c std::string_view&#39;s lifetime is the same as=
 the
     *       lifetime of the \c UciPackage that this option belongs to.
     *
     * \return The value of the this option.
     */
    std::string_view get_value(void);

    /**
     * \param value - Nul terminated value to set this option to.
     */
    void set_value(std::string_view value);

    /**
     * \note The returned \c std::string_view&#39;s lifetime is the same as=
 the
     *       lifetime of the \c UciPackage that this option belongs to.
     *
     * \return The value of the this option as a list of values.
     */
    std::vector&lt;std::string_view&gt; get_list(void);

    /**
     * \param list - vector of nul terminated \c std::string_views to
     *               replace the current list of option values with.
     */
    void set_list(std::vector&lt;std::string_view&gt; list);

    /**
     * \param value - Nul terminated value to add to this option&#39;s list=
.
     */
    void add_to_list(std::string_view);

    /**
     * \param value - Nul terminated value to remove from this option&#39;s=
 list.
     */
    void remove_from_list(std::string_view);

private:
    /**
     * \return The \c uci_context held by the \c UciContext class
     * used to acquire this UciOption via the \c UciSection and
     * \c UciPackage shared pointers.
     */
    uci_context * get_uci_context(void);

private:
    uci_option *                m_pUciOpt; ///&lt; The \c struct uci_option=
 from libuci. Lifetime managed by the associated \c UciPackage object.
    std::shared_ptr&lt;UciSection&gt; m_pSec;    ///&lt; Shared pointer to =
\c UciSection that this option belongs to. Keeps data retrieved from libuci=
 alive.
}; // UciOption

//-------------------------------------------------------------------------=
----

/** \class UciSection
 *
 */
struct UciSection : public std::enable_shared_from_this&lt;UciSection&gt;
{
private:
    friend struct UciPackage;
    struct constructor_access{}; ///&lt; Provides access to the constructor=
 for friends.

public:
    /**
     * Constructs \c UciSection. Use \c UciPackage::get_section() to acquir=
e a \c UciSection.
     *
     * \param key     - The \c constructor_access type that&#39;s only visi=
ble to friend classes.
     *                  Used to guard against improper use of \c UciSection=
.
     * \param pSec    - The \c UciPackage that this \c UciSection belongs t=
o.
     * \param pUciOpt - The \c uci_section from libuci.
     */
    UciSection(constructor_access key, std::shared_ptr&lt;UciPackage&gt; pP=
kg, uci_section * pUciSec);

    /**
     * \note The returned \c std::string_view&#39;s lifetime is the same as=
 the
     *       lifetime of the \c UciPackage that this \c UciSection belongs =
to.
     *
     * \return The name of the this section.
     */
    std::string_view get_name(void);

    /**
     * \note The returned \c std::string_view&#39;s lifetime is the same as=
 the
     *       lifetime of the \c UciPackage that this \c UciSection belongs =
to.
     *
     * \return The type of this section.
     */
    std::string_view get_type(void);

    /**
     * \note The returned \c std::string_view&#39;s lifetime is the same as=
 the
     *       lifetime of the \c UciPackage that this \c UciSection belongs =
to.
     *
     * \return The list of options that this section contains.
     */
    std::vector&lt;std::string_view&gt; list_options(void);

    /**
     * Looks up the UciOption associated with the provided nul-terminated n=
ame.
     *
     * \param name - the name of the option.
     */
    std::shared_ptr&lt;UciOption&gt; get_option(std::string_view name);

    /**
     * Creates and inserts a new string-type option with the provided value=
.
     *
     * \param name  - the name of the option.
     * \param value - the value of the option.
     */
    std::shared_ptr&lt;UciOption&gt; add_option(std::string_view name, std:=
:string_view value);

    /**
     * Creates and inserts a new list-type option with the provided value.
     *
     * \param name  - the name of the option.
     * \param value - the values of the option.
     */
    std::shared_ptr&lt;UciOption&gt; add_option(std::string_view name, std:=
:list&lt;std::string_view&gt; value);

    /**
     * Deletes the option with the provided name.
     *
     * \param name - the option to delete.
     */
    void delete_option(std::string_view name);

    /**
     * Change the index of this section.
     *
     * \param the index to change this section to.
     */
    void set_section_index(int idx);

private:
    friend struct UciOption;
    /**
     * \return The \c uci_context held by the \c UciContext class used
     * to acquire this \c UciSection via the \c UciPackage shared pointer.
     */
    uci_context * get_uci_context(void);

private:
    uci_section *               m_pUciSec; ///&lt;
    std::shared_ptr&lt;UciPackage&gt; m_pPkg;    ///&lt;
}; // struct UciSection

//-------------------------------------------------------------------------=
----

/** \class UciPackage
 *
 */
struct UciPackage : public std::enable_shared_from_this&lt;UciPackage&gt;
{
private:
    friend struct UciContext;
    struct constructor_access{}; ///&lt; Provides access to the constructor=
 for friends.

public:
    /**
     * \param key     - The \c constructor_access type that&#39;s only visi=
ble to friend classes.
     *                  Used to guard against improper use of \c UciPackage=
.
     * \param pSec    - The \c UciContext that this UciPackage belongs to.
     * \param pUciOpt - The \c uci_package from libuci.
     */
    UciPackage(constructor_access key, std::shared_ptr&lt;UciContext&gt; pC=
tx, uci_package * pUciPkg);

    /**
     * Ensures that this UciPackage, and everything that&#39;s associated w=
ith it, is unloaded from libuci.
     */
    ~UciPackage(void);

    /**
     * \note The returned \c std::string_view&#39;s lifetime is the same as=
 the
     *       lifetime of this \c UciPackage.
     *
     * \return The name of this package.
     */
    std::string_view get_name(void);

    /**
     * \note The returned \c std::string_view&#39;s lifetime is the same as=
 the
     *       lifetime of the \c UciPackage that this \c UciSection belongs =
to.
     *
     * \return A collection of section names.
     */
    std::vector&lt;std::string_view&gt; list_sections(void);

    /**
     * \param name - A nul-terminated string indicating the desired section=
 name.
     * \return a UciSection representing the section indicated by name.
     */
    std::shared_ptr&lt;UciSection&gt; get_section(std::string_view name);

    /**
     * \param name - A nul-terminated string indicating the desired section=
 name.
     * \return a UciSection representing the newly added section.
     */
    std::shared_ptr&lt;UciSection&gt; add_section(std::string_view type, st=
d::string_view name =3D std::string_view());

    /**
     * Delete a section by name.
     *
     * \param name - A nul-terminated string indicating the desired section=
 name.
     */
    void delete_section(std::string_view name);

    /**
     * Saves the changes that have been made to this UciPackage to disk as =
a delta.
     * Use \c UciPackage::commit() to apply these changes.
     */
    void save(void);

    /**
     * Applies all deltas saved to disk to this package&#39;S config file.
     *
     * \note Warning! Invalidates all UciSections and UciOptions derived fr=
om this UciPackage
     *
     * \param overwrite - ???
     */
    void commit(bool overwrite =3D true);

private:
    friend struct UciSection;

    /**
     * \return The \c uci_context held by the \c UciContext class
     * used to acquire this \c UciPackage shared pointer.
     */
    uci_context * get_uci_context(void);

private:
    uci_package *               m_pUciPkg; ///&lt;
    std::shared_ptr&lt;UciContext&gt; m_pCtx;    ///&lt;
}; // struct UciPackage

//-------------------------------------------------------------------------=
----

/** \class UciContext
 *
 */
struct UciContext : public std::enable_shared_from_this&lt;UciContext&gt;
{
    /**
     * Allocates a libuci \c struct uci_context.
     */
    UciContext(void);

    /**
     * Frees the libuci \c struct uci_context.
     */
    ~UciContext(void);

    /**
     * \return List of UCI packages available in the configured config dire=
ctory.
     */
    std::vector&lt;std::string&gt; list_packages(void);

    /**
     * \param name - the desired package name.
     *
     * \note When the UciPackage&#39;s shared pointer is deleted, the named=
 package will
     *       be unloaded from libuci.
     *
     * \return A shared pointer to a UciPackage representing the indicated =
package name.
     */
    std::shared_ptr&lt;UciPackage&gt; load_package(std::string_view name);

    /**
     * Sets the directory that libuci will use to save deltas.
     *
     * \param dir - the indicated, nul-terminatred, directory.
     */
    void set_save_dir(std::string_view dir);

    /**
     * Sets the directory that libuci will search from config files.
     *
     * \param dir - the indicated, nul-terminatred, directory.
     */
    void set_config_dir(std::string_view dir);

    /**
     * Adds an additional directory that libuci will use to search for delt=
as.
     *
     * \param dir - the indicated, nul-terminatred, directory.
     */
    void add_delta_path(std::string_view dir);

    /**
     * Sets the backend that libuci will use for storage.
     *
     * \param backend - the indicated, nul-terminatred, backend.
     */
    void set_backend(std::string_view backend);

private:
    friend struct UciPackage;

    /**
     * \return the libuci \c struct uci_context.
     */
    uci_context * get_uci_context(void);

private:
    uci_context * m_pUciCtx; ///&lt;
}; // struct UciContext

//-------------------------------------------------------------------------=
----
// Inline functions
//-------------------------------------------------------------------------=
----

//-------------------------------------------------------------------------=
----
// Inlines of UciOption
//-------------------------------------------------------------------------=
----
inline UciOption::UciOption(constructor_access, std::shared_ptr&lt;UciSecti=
on&gt; pSec, uci_option * pUciOpt)
 : m_pSec(std::move(pSec))
 , m_pUciOpt(pUciOpt)
{
    assert(nullptr !=3D m_pSec);
    assert(nullptr !=3D m_pUciOpt);
}

inline std::string_view UciOption::get_name(void)
{
    return m_pUciOpt-&gt;<a href=3D"http://e.name">e.name</a>;
}

inline bool UciOption::is_list(void)
{
    return UCI_TYPE_LIST =3D=3D m_pUciOpt-&gt;type;
}

inline std::string_view UciOption::get_value(void)
{
    return m_pUciOpt-&gt;v.string;
}

inline void UciOption::set_value(std::string_view value)
{
    assert(false);

    uci_ptr ptr;
    // Set values to ... something?
    if(UCI_OK !=3D uci_add_list(get_uci_context(), &amp;ptr))
    {
        impl::throw_uci_error(*get_uci_context());
    }
}

inline std::vector&lt;std::string_view&gt; UciOption::get_list(void)
{
    std::vector&lt;std::string_view&gt; list;
    {
        /*
         * List is a list of uci_elements, and in the context of
         * a uci_option with type list, each such element&#39;s name
         * is a value in the list.
         */
        uci_element *e =3D nullptr;
        uci_foreach_element(&amp;(m_pUciOpt-&gt;v.list), e)
        {
            list.emplace_back(e-&gt;name);
        }
    }
    return list;
}

inline void UciOption::set_list(std::vector&lt;std::string_view&gt; list)
{
    assert(false);

    //TODO:
    // Delete all items and add all the new ones? No clear API option
}

inline void UciOption::add_to_list(std::string_view)
{
    assert(false);

    uci_ptr ptr;
    // Set values to ... something?
    if(UCI_OK !=3D uci_add_list(get_uci_context(), &amp;ptr))
    {
        impl::throw_uci_error(*get_uci_context());
    }
}

inline void UciOption::remove_from_list(std::string_view)
{
    assert(false);

    uci_ptr ptr;
    // Set values to ... something?
    if(UCI_OK !=3D uci_del_list(get_uci_context(), &amp;ptr))
    {
        impl::throw_uci_error(*get_uci_context());
    }
}

inline uci_context * UciOption::get_uci_context(void)
{
    return m_pSec-&gt;get_uci_context();
}

//-------------------------------------------------------------------------=
----
// Inlines of UciSection
//-------------------------------------------------------------------------=
----
inline UciSection::UciSection(constructor_access, std::shared_ptr&lt;UciPac=
kage&gt; pPkg, uci_section * pUciSec)
 : m_pPkg(std::move(pPkg))
 , m_pUciSec(pUciSec)
{
    assert(nullptr !=3D m_pPkg);
    assert(nullptr !=3D m_pUciSec);
}

inline std::string_view UciSection::get_name(void)
{
    return m_pUciSec-&gt;<a href=3D"http://e.name">e.name</a>;
}

inline std::string_view UciSection::get_type(void)
{
    return m_pUciSec-&gt;type;
}

inline std::vector&lt;std::string_view&gt; UciSection::list_options(void)
{
    std::vector&lt;std::string_view&gt; sections;
    {
        uci_element *e =3D nullptr;
        uci_foreach_element(&amp;(m_pUciSec-&gt;options), e)
        {
            uci_option *o =3D uci_to_option(e);
            sections.emplace_back(o-&gt;<a href=3D"http://e.name">e.name</a=
>);
        }
    }
    return sections;
}

inline std::shared_ptr&lt;UciOption&gt; UciSection::get_option(std::string_=
view name)
{
    impl::assert_nul_terminated(name);

    if(uci_option * pOpt =3D uci_lookup_option(get_uci_context(), m_pUciSec=
, name.data()); pOpt !=3D nullptr)
    {
        return std::make_shared&lt;UciOption&gt;(UciOption::constructor_acc=
ess(), this-&gt;shared_from_this(), pOpt);
    }
    else
    {
        return {};
    }
}

inline std::shared_ptr&lt;UciOption&gt; UciSection::add_option(std::string_=
view name, std::string_view value)
{
    assert(false);

    uci_ptr ptr;
    // Set values to ... something?
    if(UCI_OK !=3D uci_set(get_uci_context(), &amp;ptr))
    {
        impl::throw_uci_error(*get_uci_context());
    }
}

inline std::shared_ptr&lt;UciOption&gt; UciSection::add_option(std::string_=
view name, std::list&lt;std::string_view&gt; value)
{
    assert(false);

    uci_ptr ptr;
    // Set values to ... something?
    if(UCI_OK !=3D uci_set(get_uci_context(), &amp;ptr))
    {
        impl::throw_uci_error(*get_uci_context());
    }
}

inline void UciSection::delete_option(std::string_view name)
{
    assert(false);

    uci_ptr ptr;
    // Set values to ... something?
    if(UCI_OK !=3D uci_delete(get_uci_context(), &amp;ptr))
    {
        impl::throw_uci_error(*get_uci_context());
    }
}

inline void UciSection::set_section_index(int idx)
{
    if(UCI_OK !=3D uci_reorder_section(get_uci_context(), m_pUciSec, idx))
    {
        impl::throw_uci_error(*get_uci_context());
    }
}

inline uci_context * UciSection::get_uci_context(void)
{
    return m_pPkg-&gt;get_uci_context();
}

//-------------------------------------------------------------------------=
----
// Inlines of UciPackage
//-------------------------------------------------------------------------=
----
inline UciPackage::UciPackage(constructor_access, std::shared_ptr&lt;UciCon=
text&gt; pCtx, uci_package * pUciPkg)
 : m_pCtx(std::move(pCtx))
 , m_pUciPkg(pUciPkg)
{
    assert(nullptr !=3D m_pCtx);
    assert(nullptr !=3D m_pUciPkg);
}

inline UciPackage::~UciPackage()
{
    if(UCI_OK !=3D uci_unload(get_uci_context(), m_pUciPkg))
    {
        impl::throw_uci_error(*get_uci_context());
    }
}

inline std::string_view UciPackage::get_name(void)
{
    return m_pUciPkg-&gt;<a href=3D"http://e.name">e.name</a>;
}

inline std::vector&lt;std::string_view&gt; UciPackage::list_sections(void)
{
    std::vector&lt;std::string_view&gt; sections;

    {
        uci_element *e =3D nullptr;
        uci_foreach_element( &amp;m_pUciPkg-&gt;sections, e)
        {
            uci_section *s =3D uci_to_section(e);
            sections.emplace_back(s-&gt;<a href=3D"http://e.name">e.name</a=
>);
        }
    }

    return sections;
}

inline std::shared_ptr&lt;UciSection&gt; UciPackage::get_section(std::strin=
g_view name)
{
    impl::assert_nul_terminated(name);

    if(uci_section * pSec =3D uci_lookup_section(get_uci_context(), m_pUciP=
kg, name.data()); pSec !=3D nullptr)
    {
        return std::make_shared&lt;UciSection&gt;(UciSection::constructor_a=
ccess(), this-&gt;shared_from_this(), pSec);
    }
    else
    {
        return {};
    }
}

inline std::shared_ptr&lt;UciSection&gt; UciPackage::add_section(std::strin=
g_view type, std::string_view name)
{
    uci_section * pSec =3D nullptr;
    if(UCI_OK !=3D uci_add_section(get_uci_context(), m_pUciPkg, type.data(=
), &amp;pSec))
    {
        impl::throw_uci_error(*get_uci_context());
    }

    if( ! name.empty())
    {
        uci_ptr ptr;
        // Set values to ... something?
        if(UCI_OK !=3D uci_rename(get_uci_context(), &amp;ptr))
        {
            impl::throw_uci_error(*get_uci_context());
        }
    }
    return std::make_shared&lt;UciSection&gt;(UciSection::constructor_acces=
s(), this-&gt;shared_from_this(), pSec);
}

inline void UciPackage::delete_section(std::string_view name)
{
    assert(false);

    uci_ptr ptr;
    // Set values to ... something?
    if(UCI_OK !=3D uci_delete(get_uci_context(), &amp;ptr))
    {
        impl::throw_uci_error(*get_uci_context());
    }
}

inline void UciPackage::save(void)
{
    if(UCI_OK !=3D uci_save(get_uci_context(), m_pUciPkg))
    {
        impl::throw_uci_error(*get_uci_context());
    }
}

inline void UciPackage::commit(bool overwrite)
{
    if(UCI_OK !=3D uci_commit(get_uci_context(), &amp;m_pUciPkg, overwrite)=
)
    {
        impl::throw_uci_error(*get_uci_context());
    }
}

inline uci_context * UciPackage::UciPackage::get_uci_context(void)
{
    return m_pCtx-&gt;get_uci_context();
}

//-------------------------------------------------------------------------=
----
// Inlines of UciContext
//-------------------------------------------------------------------------=
----
inline UciContext::UciContext(void)
 : m_pUciCtx(uci_alloc_context())
{
    assert(nullptr !=3D m_pUciCtx);
}

inline UciContext::~UciContext(void)
{
    uci_free_context(m_pUciCtx);
}

inline std::vector&lt;std::string&gt; UciContext::list_packages(void)
{
    char **configs =3D nullptr;
    const impl::ScopeGuard configGuard([&amp;configs](void){ free(configs);=
 });

    if((UCI_OK !=3D uci_list_configs(m_pUciCtx, &amp;configs)) || ! configs=
)
    {
        impl::throw_uci_error(*m_pUciCtx);
    }

    std::vector&lt;std::string&gt; configvect;
    for(char ** p =3D configs; *p; ++p)
    {
        configvect.emplace_back(*p);
    }

    return configvect;
}

inline std::shared_ptr&lt;UciPackage&gt; UciContext::load_package(std::stri=
ng_view name)
{
    // TODO: It would be ideal if there was a way to ensure a UciPackage lo=
aded twice had the
    //       same lifetime. probably need a std::map&lt;std::string, std::w=
eak_ptr&lt;UciPackage&gt;&gt;;
    impl::assert_nul_terminated(name);

    uci_package * pUciPkg =3D nullptr;
    if(UCI_OK !=3D uci_load(m_pUciCtx, name.data(), &amp;pUciPkg) || ! pUci=
Pkg)
    {
        impl::throw_uci_error(*m_pUciCtx);
    }
    return std::make_shared&lt;UciPackage&gt;(UciPackage::constructor_acces=
s(), this-&gt;shared_from_this(), pUciPkg);
}

inline void UciContext::set_save_dir(std::string_view dir)
{
    impl::assert_nul_terminated(dir);

    if(UCI_OK !=3D uci_set_savedir(m_pUciCtx, dir.data()))
    {
        impl::throw_uci_error(*m_pUciCtx);
    }
}

inline void UciContext::set_config_dir(std::string_view dir)
{
    impl::assert_nul_terminated(dir);

    if(UCI_OK !=3D uci_set_confdir(m_pUciCtx, dir.data()))
    {
        impl::throw_uci_error(*m_pUciCtx);
    }
}

inline void UciContext::add_delta_path(std::string_view dir)
{
    impl::assert_nul_terminated(dir);

    if(UCI_OK !=3D uci_add_delta_path(m_pUciCtx, dir.data()))
    {
        impl::throw_uci_error(*m_pUciCtx);
    }
}

inline void UciContext::set_backend(std::string_view backend)
{
    impl::assert_nul_terminated(backend);

    if(UCI_OK !=3D uci_set_backend(m_pUciCtx, backend.data()))
    {
        impl::throw_uci_error(*m_pUciCtx);
    }
}

inline uci_context * UciContext::get_uci_context(void)
{
    return m_pUciCtx;
}

} // namespace libucixx

#endif // LIBUCIXX_PARSE_UCI_CONFIG_FILE_H_A2CD8106_1003_4A6D_9A46_4A128EA8=
3262

</pre></div></div></div>

--00000000000010157e05a731d5a0--


--===============8307330475080769471==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8307330475080769471==--

